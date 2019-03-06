sudo mount /dev/sda1 /mnt
sudo mount --bind /dev /mnt/dev &&
sudo mount --bind /dev/pts /mnt/dev/pts &&
sudo mount --bind /proc /mnt/proc &&
sudo mount --bind /sys /mnt/sys
sudo chroot /mnt

sudo apt install grub2

grub-install /dev/sda 
exit && 
sudo umount /mnt/sys &&
sudo umount /mnt/proc &&
sudo umount /mnt/dev/pts &&
sudo umount /mnt/dev &&
sudo umount /mnt
