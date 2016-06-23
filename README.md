# preseed-implant

_Inject a preseed file into a Debian ISO, the easy way._

## Status

This is currently a work in progress and doesn't inject anything anywhere yet. I'm working on it.

## How it's supposed to work

You supply it with a Debian ISO, SHA512 and OpenPGP signatures for it, and a preseed file. It will then use [GNU xorriso](https://www.gnu.org/software/xorriso/) to place this file inside the ISO, making sure it stays bootable. That way, when you boot that ISO, the Debian Installer will use your preseed file.

## Trying it out

Get the ISO, `SHA512SUMS` and `SHA512SUMS.sign` from http://cdimage.debian.org/debian-cd/current/multi-arch/iso-cd/ and place them somewhere, e.g. `/tmp/iso`.

Then, start this container like so:

	docker build -t preseed-implant:dev . && docker run --rm -it -v /tmp/iso:/dl preseed-implant

Currently, it will simply check the signatures and exit.

## Contributing

As I'm still working on the initial version of this thing, I won't accept feature requests or pull requests with new features. However, if you have any improvements to the code that's already there, I will probably appreciate and accept them. You can always ask in advance.

## License

**The MIT License (MIT)**
Copyright (c) 2016 Tim Weber

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
