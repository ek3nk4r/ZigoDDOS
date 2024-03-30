#!/bin/bash

# Clone Git repository
echo "Cloning ZigoDDOS repository..."
git clone https://github.com/ek3nk4r/ZigoDDOS
cd ZigoDDOS || exit

echo "Unzipping DDOS.zip..."
unzip DDOS.zip

# Install Node.js v18
echo "Installing Node.js v18..."
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Run npm install
echo "Running npm install..."
npm install https-proxy-agent gradient-string cluster crypto http2 http events playwright chalk net tls url fs axios path puppeteer hpack fake-useragent cloudscraper randomstring zombie

# Install dependencies via apt
echo "Installing system dependencies via apt..."
sudo apt -y update && sudo apt -y install curl wget libcurl4 libssl-dev python3 python3-pip make cmake automake autoconf m4 build-essential git

# Clone MHDDoS repository and install Python dependencies
echo "Cloning MHDDoS repository..."
git clone https://github.com/MatrixTM/MHDDoS.git
cd MHDDoS || exit

echo "Installing Python dependencies..."
pip3 install -r requirements.txt

echo "Setup completed successfully."
