# System installation

To setup the system run the install.sh script

What needs to be done:
    * Create logical partition with all disks and mounted at /mnt/storage
    * Clone media-dl to /mnt/storage/media-dl
        git clone https://github.com/lbise/media-dl.git
    * Create group media:
        sudo addgroup media
    * Add your user to the group:
        sudo usermod -a -G media leo
    * Create folder structure
        mkdir /mnt/storage/media /mnt/storage/media/tv /mnt/storage/media/movies /mnt/storage/downloads
    * Change group ownership:
        sudo chown -R :media /mnt/storage
    * Change permissions:
        sudo chmod -R g+w /mnt/storage
    * Create other users
        sudo adduser --no-create-home --disabled-login sonarr
        sudo adduser --no-create-home --disabled-login radarr
        sudo adduser --no-create-home --disabled-login nzbget
        sudo adduser --no-create-home --disabled-login bazarr
        sudo adduser --no-create-home --disabled-login plex
    * Add the users to the group:
        sudo usermod -a -G media sonarr
        sudo usermod -a -G media radarr
        sudo usermod -a -G media nzbget
        sudo usermod -a -G media bazarr
        sudo usermod -a -G media plex
    * Change primary group:
        sudo usermod -g media sonarr
        sudo usermod -g media radarr
        sudo usermod -g media nzbget
        sudo usermod -g media bazarr
        sudo usermod -g media plex
    * Update UID/PGID in .env if they do not match
    * Install docker: See https://docs.docker.com/ add their own APT server
    * Add your user to the docker group (so you can run it without sudo)
        sudo usermod -a -G docker leo
    * Reload groups so you don't have to relog:
        newgrp docker
    * Pull and start containers
        docker compose pull
        docker compose up -d
