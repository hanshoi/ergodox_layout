.DEFAULT_GOAL := flash

HEXFILE=ergodox_ez_firmware_dvorak_krboxy.hex
CLI=./teensy/teensy_loader_cli

flash:
	$CLI -v -mmcu=atmega32u4 $HEXFILE

build:
	cd qmk_firmware && make

install:
	sudo apt install libusb-dev build-essential gcc unzip wget zip gcc-avr binutils-avr avr-libc dfu-programmer dfu-util gcc-arm-none-eabi binutils-arm-none-eabi libnewlib-arm-none-eabi git
	git clone https://github.com/PaulStoffregen/teensy_loader_cli.git teensy
	git clone https://github.com/qmk/qmk_firmware.git qmk_firmware
	wget https://www.pjrc.com/teensy/49-teensy.rules
	sudo mv 49-teensy.rules /etc/udev/rules.d/49-teensy.rules
	cd teensy && make

clean:
	rm -f *.hex

clean-install:
	rm -rf teensy
	rm -f 49-teensy.rules
	rm -rf qmk_firmware
