#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd . > /dev/null
cd $SCRIPT_DIR

git clone git://github.com/xmos/vocalfusion-rpi-setup.git

# Execute (rather than source) the setup scripts
$SCRIPT_DIR/vocalfusion-rpi-setup/setup.sh

echo "Type 'sudo reboot' below to reboot the Raspberry Pi and complete the audio setup."

popd > /dev/null
