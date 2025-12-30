import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../constants/colors.dart';
import 'animated_section.dart';

class HomeVideoSection extends StatefulWidget {
  const HomeVideoSection({
    super.key,
    this.url = 'assets/videos/fantacy_football.mp4',
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
  bool _isFullscreen = false;

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
    _exitFullscreen();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSection(
      child: Container(
        height: _isFullscreen ? MediaQuery
            .of(context)
            .size
            .height : 500,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 40),
        child: FutureBuilder<void>(
          future: _init,
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }

            final aspectRatio =
            _controller.value.isInitialized
                ? _controller.value.aspectRatio
                : 16 / 9;

            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: aspectRatio,
                    child: VideoPlayer(_controller),
                  ),

                  /// Play/Pause Overlay
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: _togglePlay,
                      child: AnimatedOpacity(
                        opacity: _controller.value.isPlaying ? 0 : 0.9,
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

                  /// CENTER CONTROLS (Backward / Play / Forward)
                  Positioned(
                    bottom: 20,
                    child: Row(
                      children: [
                        _controlButton(
                          icon: Icons.replay_10,
                          onTap: _seekBackward,
                        ),
                        const SizedBox(width: 12),
                        _controlButton(
                          icon: _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          onTap: _togglePlay,
                        ),
                        const SizedBox(width: 12),
                        _controlButton(
                          icon: Icons.forward_10,
                          onTap: _seekForward,
                        ),
                      ],
                    ),
                  ),

                  /// FULLSCREEN BUTTON
                  Positioned(
                    right: 10,
                    top: 10,
                    child: _controlButton(
                      icon: _isFullscreen
                          ? Icons.fullscreen_exit
                          : Icons.fullscreen,
                      onTap: _enterFullscreen,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  /// ---------- CONTROLS ----------

  Widget _controlButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.black54,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 28),
      ),
    );
  }

  void _togglePlay() {
    if (!_controller.value.isInitialized) return;
    _controller.value.isPlaying ? _controller.pause() : _controller.play();
    setState(() {});
  }

  void _seekForward() {
    final current = _controller.value.position;
    _controller.seekTo(current + const Duration(seconds: 10));
  }

  void _seekBackward() {
    final current = _controller.value.position;
    _controller.seekTo(
      current - const Duration(seconds: 10),
    );
  }

  /// ---------- FULLSCREEN (LANDSCAPE) ----------
  void _enterFullscreen() {
    _isFullscreen = true;

    if (!kIsWeb) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
  }

  void _exitFullscreen() {
    _isFullscreen = false;

    if (!kIsWeb) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    }
  }

//   void _toggleFullscreen() {
//     _isFullscreen ? _exitFullscreen() : _enterFullscreen();
//     setState(() {});
//   }
//
//   void _enterFullscreen() {
//     _isFullscreen = true;
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.landscapeRight,
//     ]);
//   }
//
//   void _exitFullscreen() {
//     _isFullscreen = false;
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//     ]);
//   }
// }
}
