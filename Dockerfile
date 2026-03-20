FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/34.0.0
ENV FLUTTER_HOME=/opt/flutter
ENV PATH=$PATH:$FLUTTER_HOME/bin
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    openjdk-17-jdk \
    wget \
    clang \
    cmake \
    ninja-build \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install Android SDK command-line tools
RUN mkdir -p $ANDROID_HOME/cmdline-tools && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O /tmp/cmdtools.zip && \
    unzip -q /tmp/cmdtools.zip -d $ANDROID_HOME/cmdline-tools && \
    mv $ANDROID_HOME/cmdline-tools/cmdline-tools $ANDROID_HOME/cmdline-tools/latest && \
    rm /tmp/cmdtools.zip

# Accept licenses & install SDK packages FIRST
RUN yes | sdkmanager --licenses && \
    sdkmanager \
        "platform-tools" \
        "platforms;android-34" \
        "build-tools;34.0.0" \
        "cmdline-tools;latest"

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable $FLUTTER_HOME

# Configure Flutter for Android (disable other platforms)
RUN flutter config --no-enable-web \
                   --no-enable-linux-desktop \
                   --no-enable-macos-desktop \
                   --no-enable-windows-desktop \
                   --android-sdk $ANDROID_HOME

# ✅ FIX: Bootstrap Flutter first (downloads Dart SDK internally)
RUN flutter --version

# Precache Android artifacts only
RUN flutter precache --android

# Run doctor to verify setup
RUN flutter doctor -v || true

# Copy project
WORKDIR /app
COPY . .

# Get dependencies
RUN flutter pub get

# Build APK
RUN flutter build apk --release

CMD ["bash"]