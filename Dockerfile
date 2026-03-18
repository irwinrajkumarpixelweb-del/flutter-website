FROM cirrusci/flutter:stable

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Get dependencies
RUN flutter pub get

# Build APK
RUN flutter build apk --release

# Keep container alive (optional)
CMD ["bash"]