#!/bin/bash
# ZeroG Theme installer
#
# Copyright (C) 2021 Christoph Frei <fryakatkop@gmail.com>
# Copyright (C) 2021 Stephan Wendel aka KwadFan <me@stephanwe.de>
#
# This file may be distributed under the terms of the GNU GPLv3 license.
#
# Note:
# this installer script is heavily inspired by 
# https://github.com/protoloft/klipper_z_calibration/blob/master/install.sh

# Default Parameters
KLIPPER_TARGET_DIR="${HOME}/klipper_config"
SRCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/ && pwd )"

function install_script {
# Create systemd service file
    THEME_FILES="${KLIPPER_TARGET_DIR}/.theme"

    # Force remove
    rm -rf "$THEME_FILES/*" || true
    rm -rf "$THEME_FILES" || true

    echo "Installing theme..."
    echo "Copying theme folder to correct directory"
    sleep 4
    cp -r "${SRCDIR}/.theme" ${KLIPPER_TARGET_DIR}
    cp -r "${SRCDIR}/.git" "${KLIPPER_TARGET_DIR}/.theme" 
    echo "Theme has been installed, have fun!"
    echo "Don't forget to join our discord: https://discord.gg/zerog" << EOF
EOF
}

install_script

# If something checks status of install
exit 0
