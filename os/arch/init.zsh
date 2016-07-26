# Arch linux with systemd aliases and pacaur aliases
if [[ "$LSB_DISTRIBUTOR" == "archlinux" ]]; then
    # statements
    alias ctl='sudo systemctl '
    alias feierabend='sudo systemctl start poweroff.target'
    alias status=" sudo systemctl status"
    alias start=" sudo systemctl start"
    alias stop=" sudo systemctl stop"
    alias restart=" sudo systemctl restart"
    alias reboot="sudo systemctl start reboot.target"

    # Look for pacaur, and add useful functions and aliases to it too
    if [[ -x `command -v pacaur` ]]; then
        alias paupg='pacaur -Syu'          # Synchronize with repositories before upgrading packages (AUR too) that are out of date on the local system.
        alias paupgd='pacaur -Syu --devel' # Synchronize with repositories before upgrading packages (AUR and devel too) that are out of date on the local system.
        alias paupga='pacaur -u'           # Upgrade all AUR packages
        alias paupgda='pacaur -u --devel'  # Upgrade all AUR and devel (-git, -svn, etc.) packages
        alias pain='pacaur -S'             # Install specific package(s) from the repositories or the AUR
        alias pains='pacaur -U'            # Install specific package not from the repositories but from a file
        alias pare='pacaur -R'             # Remove the specified package(s), retaining its configuration(s) and required dependencies
        alias parem='pacaur -Rns'          # Remove the specified package(s), its configuration(s) and unneeded dependencies
        alias parep='pacaur -Si'           # Display information about a given package in the repositories or the AUR
        alias pareps='pacaur -Ss'          # Search for package(s) in the repositories and the AUR
        alias parepsa='pacaur -s'          # Search for package(s) in the AUR
        alias paloc='pacaur -Qi'           # Display information about a given package in the local database
        alias palocs='pacaur -Qs'          # Search for package(s) in the local database
        alias palst='pacaur -Qe'           # List manually installed packages, even those installed from AUR

        # Additional pacaur alias examples
        if [[ -x `command -v abs` && -x `command -v aur` ]]; then
            alias paupd='pacaur -Sy && sudo abs && sudo aur'  # Update and refresh the local package, ABS and AUR databases against repositories
        elif [[ -x `command -v abs` ]]; then
            alias paupd='pacaur -Sy && sudo abs'              # Update and refresh the local package and ABS databases against repositories
        elif [[ -x `command -v aur` ]]; then
            alias paupd='pacaur -Sy && sudo aur'              # Update and refresh the local package and AUR databases against repositories
        else
            alias paupd='pacaur -Sy'                          # Update and refresh the local package database against repositories
        fi

        alias painsd='pacaur -S --asdeps'        # Install given package(s) as dependencies of another package
        alias pamir='pacaur -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
    fi
fi

