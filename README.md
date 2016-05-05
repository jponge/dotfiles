# My dotfiles and configuration scripts

Unboxing a new machine is _fun_, provisioning it is _not always so fun_.

This repository contains dotfiles and scripts for getting me running on Mac OS X.

See [LICENSE](LICENSE) for the license terms.

## What it does and what it doesn't do

Something important: I have been deliberately focusing on getting me 80% started.

These scripts install most of my tools of choice.
I go with the manual route for the remainder of the tools (Adobe Creative Cloud, Traktor, etc).
I also manually transfer documents, many of which are on Dropbox.

These scripts do not install all possible dependencies, and there is no complex support for say, loading private data like GnuPG keys, etc.
I also tend to go with a configuration that is close to what is out of the box.

## Getting up and running

1. Clone this into `~/dotfiles`
2. Run `scripts/setup-with-homebrew.sh`
3. Run `scripts/link-dot-files.sh`
4. Run `scripts/use-homebrew-bash.sh`

## Recommendations

These scripts and files are tailored to _my_ needs and taste.

I don't recommend that you use them as-is on your own machines unless you know what you are doing.

You can take inspiration from these files to do your own dotfiles.
If you see something to improve, feel-free to drop me an issue or a pull-request!
