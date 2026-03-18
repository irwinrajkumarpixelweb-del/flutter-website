FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app

# Copy only pubspec first (for caching)
COPY pubspec.* ./
RUN flutter pub get

# Copy full project
COPY . .

# Accept Android licenses
RUN yes | flutter doctor --android-licenses

# Build APK
RUN flutter build apk --release

CMD ["bash"]