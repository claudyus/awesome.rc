#!/bin/bash

#install awesome 3.5
sudo apt-add-repository ppa:klaus-vormweg/ppa
sudo aptitude update
sudo aptitude install awesome || sudo aptitude upgrade
sudo aptitude install awesome-extra xscreensaver


grep no-splash $HOME/.xinitrc || \
	echo 'xscreensaver -no-splash &' >> $HOME/.xinitrc

