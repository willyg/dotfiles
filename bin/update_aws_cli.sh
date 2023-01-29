#!/usr/bin/env bash
set -euo pipefail

cd "$HOME"

DOWNLOAD_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
echo "Downloading ${DOWNLOAD_URL}"
curl -sL "${DOWNLOAD_URL}" -o "awscliv2.zip"

INSTALL_DIR="${HOME}/bin"
echo "Installing to ${INSTALL_DIR}"
unzip -q awscliv2.zip
"${HOME}/aws/install" --update --bin-dir "${INSTALL_DIR}" --install-dir "${INSTALL_DIR}"
rm -rf "${HOME}/aws"* -rf