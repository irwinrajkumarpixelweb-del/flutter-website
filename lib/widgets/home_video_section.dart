import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../constants/colors.dart';
import 'animated_section.dart';

class HomeVideoSection extends StatefulWidget {
  const HomeVideoSection({
    super.key,
    this.url='assets/videos/user2admin.mp4',
    // this.url = 'https://flutter.github.io/assets-for-api-docs/assets/videos/user2admin.mp4',
    this.autoplay = false,
    this.loop = true,
    this.isAsset = false,
  });

  final String url;
  final bool autoplay;
  final bool loop;
  final bool isAsset;

  @override
  State<HomeVideoSection> createState() => _HomeVideoSectionState();
}

class _HomeVideoSectionState extends State<HomeVideoSection> {
  late final VideoPlayerController _controller;
  Future<void>? _init;

  @override
  void initState() {
    super.initState();
    _controller = widget.isAsset
        ? VideoPlayerController.asset(widget.url)
        : VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _init = _controller.initialize().then((_) async {
      await _controller.setLooping(widget.loop);
      if (widget.autoplay) {
        await _controller.play();
      }
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnimatedSection(
      child: Container(
        width: screenWidth,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 40),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: FutureBuilder<void>(
              future: _init,
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return Container(
                    height: 280,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const SizedBox(
                      width: 28,
                      height: 28,
                      child: CircularProgressIndicator(strokeWidth: 3),
                    ),
                  );
                }

                if (_controller.value.hasError) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Video error: ${_controller.value.errorDescription}',
                      style: const TextStyle(color: CustomColor.whitePrimary),
                    ),
                  );
                }

                final aspect = _controller.value.isInitialized
                    ? _controller.value.aspectRatio
                    : 16 / 9;

                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio: aspect,
                        child: VideoPlayer(_controller),
                      ),

                      // Play/Pause overlay
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: _toggle,
                            child: AnimatedOpacity(
                              opacity: _controller.value.isPlaying ? 0.0 : 0.9,
                              duration: const Duration(milliseconds: 200),
                              child: Container(
                                color: Colors.black45,
                                child: const Icon(
                                  Icons.play_circle_fill,
                                  size: 72,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Bottom-right control button
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: IconButton(
                            onPressed: _toggle,
                            color: Colors.white,
                            icon: Icon(
                              _controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _toggle() {
    if (!_controller.value.isInitialized) return;
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
    setState(() {});
  }
}
