# Hanshoi's Ergodox EZ ArkkuDvorak

*TODO: This is Work in Progress, don't use yet.*

ArkkuDvorak layout modified for tile based window manager and emacs usage
for Ergodox EZ keyboard.

Arkkudvorak is basic dvorak with finnish ä and ö letters added to enable
writing finnish with it.

This is a modified version of the original Dvorak layout in qmk_firmware
repository.

![alt text](https://github.com/hanshoi/ergodox_layout/blob/master/keyboard-layout.png "Base layer")

## Install
You need qmk_firmware if you want to compile this yourself.
If you are satisfied with just flashing it into your device
then installing teensy-cli will suffice.

You can install all prerequisities with running:

```bash
make install
```

Word of warning though, that install command does everything for you,
including installing some stuff on your computer, so you might want
to run everything by hand.

## Usage
```bash
make build  # to compile, (needed only if you have changed keymap.c)
make flash  # to flash into device
```

