FROM cirrusci/flutter:3.24.0

WORKDIR /app

COPY . .

RUN flutter doctor

RUN flutter pub get

RUN flutter build apk --release

CMD ["bash"]