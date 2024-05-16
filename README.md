# System installation

To setup the system run the install.sh script

What needs to be done:
    * Create logical partition with all disks and mounted at /mnt/storage
    * Clone media-dl to /mnt/storage/media-dl
    * Create group media: sudo addgroup media
    * Add your user to the group: sudo usermod -a -G media leo
    * Change group ownership of /mnt/storage: sudo chown :media /mnt/storage
    * Change permissions: sudo chmod g+w /mnt/storage
