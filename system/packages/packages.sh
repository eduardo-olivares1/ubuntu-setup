MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"
$MY_PATH/bin/install_apt_packages.sh
$MY_PATH/bin/install_snap_packages.sh
$MY_PATH/bin/install_deb_packages.sh