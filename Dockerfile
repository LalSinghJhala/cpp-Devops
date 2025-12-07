# Use official Ubuntu image
FROM ubuntu:latest

# Install g++
RUN apt update && apt install -y g++

# Copy all files from local folder into container
COPY . /app

# Go to app folder
WORKDIR /app

# Compile the C++ code
RUN g++ main.cpp -o app

# Run the app
CMD ["./app"]
