#!/usr/bin/env bash
set -e

# ==============================
#         ARTHUR STUFF!
# ==============================


wget -qO - https://dl.xanmod.org/archive.key | \
  sudo gpg --dearmor -vo /etc/apt/keyrings/xanmod-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org $(lsb_release -sc) main" \
  | sudo tee /etc/apt/sources.list.d/xanmod-release.list
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y linux-xanmod-lts-x64v3 #< NOTEE THIS IS NOT UNIVERSAL STUFF!!!!
sudo apt install -y --no-install-recommends dkms libdw-dev clang lld llvm
sudo apt-get install -y --no-install-recommends \
  ffmpeg git fastfetch apt-utils libmediainfo0v5 \
  libglib2.0-0t64 fonts-noto-color-emoji tmux python3-venv python3-pip \
  sqlite3 net-tools lsof
sudo apt install -y \
  python3 \
  python3-full \
  python3-dev \
  python3-pip \
  python3-venv \
  python3-wheel \
  python3-setuptools \
  python3-distutils \
  python3-build \
  python3-cffi \
  python3-cryptography \
  python3-numpy \
  python3-openssl \
  python3-msgpack \
  python3-psutil \
  python3-yaml
sudo apt install -y \
  build-essential \
  gcc \
  g++ \
  make \
  cmake \
  pkg-config \
  autoconf \
  automake \
  libtool \
  gdb \
  ninja-build
sudo apt install -y \
  libffi-dev \
  libssl-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  liblzma-dev \
  zlib1g-dev \
  libncurses5-dev \
  libncursesw5-dev \
  tk-dev \
  uuid-dev \
  libxml2-dev \
  libxslt1-dev \
  libjpeg-dev \
  libpng-dev \
  libfreetype6-dev \
  libwebp-dev
sudo apt install -y rustc cargo
sudo apt install -y \
  git \
  curl \
  wget \
  llvm \
  lld \
  clang \
  clang-tools \
  libclang-dev \
  valgrind \
  strace \
  ltrace
sudo apt install -y \
  libuv1-dev \
  libevent-dev \
  libunwind-dev \
  libcap-dev \
  libseccomp-dev \
  libsystemd-dev

echo "
✅ DORRRRRRRRRRRRRRRRRRR."
