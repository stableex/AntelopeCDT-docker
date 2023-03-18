FROM debian:bullseye

# Install required packages
RUN apt-get update && apt-get install -y wget

# Download and install cdt-cpp
RUN wget https://github.com/AntelopeIO/cdt/releases/download/v3.1.0/cdt_3.1.0_arm64.deb && \
    apt-get install -y ./cdt_3.1.0_arm64.deb

# Set the working directory to /app
WORKDIR /app
