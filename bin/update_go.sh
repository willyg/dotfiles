#!/usr/bin/env bash
set -euo pipefail

cd "$HOME"

VERSION=$(curl -s https://go.dev/VERSION?m=text)

INSTALLER="go.tar.gz"
DOWNLOAD_URL="https://go.dev/dl/${VERSION}.linux-amd64.tar.gz"
echo "Downloading ${DOWNLOAD_URL}"
curl -sL "${DOWNLOAD_URL}" -o "${INSTALLER}"


INSTALL_DIR="${HOME}/.go"
echo "Installing to ${INSTALL_DIR}"
rm -rf "${INSTALL_DIR}/go"
mkdir -p "${INSTALL_DIR}"
tar -xzf "${INSTALLER}" -C "${INSTALL_DIR}" 
rm -rf "${INSTALLER}"