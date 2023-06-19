echo "Installing packages..."
MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"

function install_apt_packages() {
    echo "Installing apt packages..."

    apt_packages="${MY_PATH}/data/apt.txt"
    while IFS= read -r line; do
        echo "Installing $line ..."
        sudo apt install $line -y
    done <"$apt_packages"
}

function install_snap_packages() {
    echo "Installing snap packages..."
    
    snap_packages="${MY_PATH}/data/snap.txt"
    while IFS= read -r line; do
        sudo snap install $line
    done <"$snap_packages"
}

function install_deb_packages() {
    echo "Installing deb packages from URL..."
    
    deb_packages="${MY_PATH}/data/deb.txt"
    while IFS= read -r line; do
        #Create temp forlder in /tmp/tmp.UUID
        TEMP_DEB="$(mktemp)" &&
            wget -O "$TEMP_DEB" $line &&
            sudo dpkg -i "$TEMP_DEB"
        rm -f "$TEMP_DEB"
    done <"$deb_packages"

    apt --fix-broken install
}

install_apt_packages
install_snap_packages
install_deb_packages