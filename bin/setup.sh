#!/bin/bash
set -e

echo "Installing python3-venv if needed..."
sudo apt update
sudo apt install -y python3-venv

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Installing dependencies..."
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
else
    echo "⚠️  requirements.txt not found. Skipping dependency installation."
fi

echo "✅ Setup complete."

