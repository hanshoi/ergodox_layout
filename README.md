# Hanshoi's Ergodox EZ Dvorak
Dvorak layout modified for tile based window manager and emacs usage
for Ergodox EZ keyboard.

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
make build  # to compile
make flash  # to flash into device
```

