#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/smallstep/cli/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local platform="${os}_${arch}"
    local archive_type=${4:-tar.gz}
    local file=step_${os}_${ver}_${arch}.${archive_type}
    local url=$MIRROR/v$ver/$file
    local lfile=$DIR/$file
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver linux armv7
    dl $ver windows amd64 zip
    dl $ver windows arm64 zip
}

dl_ver ${1:-0.27.4}
