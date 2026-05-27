#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "========================================"
echo " Redesign Maker Local Runner"
echo "========================================"
echo

if ! command -v node >/dev/null 2>&1; then
  echo "[ERROR] Node.js is not installed or not in PATH."
  echo "Please install Node.js 20 LTS or newer, then run this file again."
  exit 1
fi

if ! command -v npm >/dev/null 2>&1; then
  echo "[ERROR] npm is not installed or not in PATH."
  exit 1
fi

if [ ! -f ".env.local" ]; then
  echo "Creating .env.local from .env.example..."
  cp .env.example .env.local
fi

if [ ! -d "node_modules" ]; then
  echo "Installing dependencies. This may take a few minutes..."
  npm ci
fi

echo
echo "Starting local server on http://localhost:3002"
echo "Press Ctrl+C to stop."
echo
npm run dev:local
