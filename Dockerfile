FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app

# Copy pubspec first (for caching)
COPY pubspec.* ./
RUN flutter pub get
RUN flutter doctor
RUN flutter clean

# Copy full project
COPY . .

# ✅ Accept licenses (no manual JAVA_HOME)
RUN yes | sdkmanager --licenses || true

# Build APK
RUN flutter build apk --release

CMD ["bash"]