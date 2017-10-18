.DEFAULT_GOAL := build

HEXFILE=ergodox_ez_firmware_dvorak_krboxy.hex
CLI=./teensy/teensy_loader_cli

build:
	$CLI -v -mmcu=atmega32u4 $HEXFILE

install:
	sudo apt-get install libusb-dev
	git clone https://github.com/PaulStoffregen/teensy_loader_cli.git teensy
	wget https://www.pjrc.com/teensy/49-teensy.rules
	sudo mv 49-teensy.rules /etc/udev/rules.d/49-teensy.rules
	cd teensy && make

clean-install:
	rm -rf teensy
	rm -f 49-teensy.rules
