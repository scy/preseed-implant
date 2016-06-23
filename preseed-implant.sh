#!/bin/sh
set -e

myname='preseed-implant'

dldir='/dl'
hashfile='SHA512SUMS'
signfile="$hashfile.sign"

msg() {
	printf '%s: %s\n' "$myname" "$*"
}

die() {
	msg "$@" >&2
	exit 1
}

verify_integrity() {
	gpg --verify "$signfile" || die 'GPG signature of hash file is incorrect'
	sha512sum -c "$hashfile" || die 'ISO file does not match the expected hash'
}

cd "$dldir"
verify_integrity
