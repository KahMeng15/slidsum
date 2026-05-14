#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "========================================"
echo "    SlidSum - macOS Launcher            "
echo "========================================"

if ! command -v python3 &> /dev/null; then
    echo "Python3 could not be found. Please install Python3."
    exit 1
fi

if [ ! -d ".venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv .venv
fi

echo "Activating virtual environment..."
source .venv/bin/activate

echo "Checking/Installing requirements..."
pip install -r requirements.txt -q

echo "Starting SlidSum..."
python slidsum.py

echo "Done."
