FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app

# ✅ Set Java 17
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy pubspec first
COPY pubspec.* ./
RUN flutter pub get

# Copy full project
COPY . .

# Accept licenses
RUN yes | flutter doctor --android-licenses

# Build APK
RUN flutter build apk --release

CMD ["bash"]