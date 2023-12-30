# Use the official Flutter image as the base image
FROM cirrusci/flutter:2.5.3

# Set the working directory inside the container
WORKDIR /app

# Copy the entire Flutter app to the container
COPY . .

# Run Flutter commands to build the app
RUN flutter pub get
RUN flutter build apk --release

# Expose the port used by the Flutter app
EXPOSE 8080

# Command to run the Flutter app when the container starts
CMD ["flutter", "run", "-d", "web"]
