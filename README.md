# ROI Revolution's Boxen

This is a fork of [boxen](https://github.com/boxen/our-boxen). Check out their [README](https://github.com/boxen/our-boxen/blob/master/README.md) for the most up-to-date Boxen information.

## What's Inculded?

* [homebrew](https://brew.sh/)
* [homebrew casks](https://caskroom.github.io/)
* [rbenv](https://github.com/rbenv/rbenv)
* [nodenv](https://github.com/ekalinin/nodeenv)
* Clone [ROI Projects](https://github.com/roirevolution/) into `~/src`

## Getting Started

### Warnings

There are a few potential conflicts to keep in mind.
Boxen does its best not to get in the way of a dirty system,
but you should check into the following before attempting to install your
boxen on any machine (we do some checks before every Boxen run to try
and detect most of these and tell you anyway):

* Boxen __requires__ at least the Xcode Command Line Tools installed.
* Boxen __will not__ work with an existing rvm install.
* Boxen __may not__ play nice with a GitHub username that includes dash(-)
* Boxen __may not__ play nice with an existing rbenv install.
* Boxen __may not__ play nice with an existing chruby install.
* Boxen __may not__ play nice with an existing homebrew install.
* Boxen __may not__ play nice with an existing nvm install.
* Boxen __recommends__ installing the full Xcode.

### Requirements

#### Xcode

1. Install Xcode from the Mac App Store using the `dev@roirevolution.com` Apple ID
1. Install the Command Line Tools. In the terminal run `xcode-select --install`

### Installing

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/tmr08c/our-boxen.git /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen --no-fde
```

Potential Issues

* It is matching a different Github username run again with `BOXEN_GITHUB_USERNAME=<your username>`

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.
If you do have a `~/.bashrc` or `~/.zshrc`, your shell will not use
`~/.profile` so you'll need to add a line like so at _the end of your config_:

``` sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
```

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

### Creating a personal module

See [the documentation in the
`modules/people`](modules/people/README.md)
directory for creating per-user modules that don't need to be applied
globally to everyone.

### Creating a project module

See [the documentation in the
`modules/projects`](modules/projects/README.md)
directory for creating organization projects (i.e., repositories that people
will be working in).

## upgrading boxen
See [FAQ-Upgrading](https://github.com/boxen/our-boxen/blob/master/docs/faq.md#q-how-do-you-upgrade-your-boxen-from-the-public-our-boxen).

## Using homebrew

To use homebrew you use the brew command

For example:
```
brew install redis
brew services start redis
```

Would install and start redis on your computer.

## Halp!

See [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md).

Use Issues or #boxen on irc.freenode.net.
