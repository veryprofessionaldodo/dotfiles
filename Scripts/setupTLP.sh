#!/bin/bash

sudo systemctl enable tlp
sudo systemctl enable tlp-sleep.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo systemctl start tlp