# **BTRFS+LUKS+RAID0**  
<img src="data:image/png;base64,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" width="300" height="300">

**Further instructions can be found at [Arch Wiki BTRFS](https://wiki.archlinux.org/title/btrfs)**

&nbsp;
# **Partition Setup**

### **Get the device names & create the partitions using gdisk**
```bash
lsblk

gdisk /dev/nvme0n1
```
* Create a new empty GUID partition table **(o)**

* Create the first partition on the device for the EFI directory **(n)** **(+512M in last sector)** Use code **(ef00)** for EFI 

*  Create an 8GB Swap partition **(n)** **(+8G in the last sector)** Use code **(8200)** for Linux swap

* Use the rest of the space for data **(n)** **(Press enter to use all available space)** Use code **( fd00)** for Linux RAID

* Write the partitions to the disk **(w)**
 
 &nbsp;

  
 
 ### **Copy the device partitions over to the other drive**
 ```bash
 sgdisk /dev/nvme0n1 -R /dev/nvme1n1

 # The GUID was copied over in the previous command, use this command to create a new unique GUID on one of the drives
 
 sgdisk -G /dev/nvme1n1
 ```
&nbsp;

### **Create the filesystem for the EFI partition**
```bash
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.fat -F32 /dev/nvme1n1p1
```
&nbsp;
### **Set up SWAP**
```bash
mkswap /dev/nvme0n1p2
mkswap /dev/nvme1n1p2

# Turn on SWAP

swapon /dev/nvme[0-1]n1p2
```
&nbsp;

### **Setting up the Linux MD array**
```bash
mdadm --create /dev/md0 --chunk=128K --level=0 --raid-devices=2 /dev/nvme0n1p3 /dev/nvme1n1p3

# View the array

cat /proc/mdstat
```
&nbsp;

# **LUKS (Encryption)**
```bash
# A benchmark can be ran to determine the speed of different ciphers

cryptsetup benchmark

# Create a luks encrypted container at /dev/md0
cryptsetup luksFormat -c aes-xts-plain64 -s 512 -h sha512 -y --use-urandom /dev/md0

# Open the LUKS container

cryptsetup open /dev/md0 cryptlvm
```
&nbsp;

# **LVM**
```bash
# Create a physical volume (Use pvs to show the created PV)

pvcreate /dev/mapper/cryptlvm

# Create a new volume group (Use vgs to show the created VG, "vg1" can be supplemented with any desired name)

vgcreate vg1 /dev/mapper/cryptlvm 

# Create the logical volumes (Use lvs to show the created LV's)

lvcreate -L 50G vg1 -n root
lvcreate -l 100%FREE vg1 -n home
```
### **Format the filesystems on each LV**
```bash
# You can supplement with your filesystem of choice i.e. ext4

mkfs.xfs /dev/vg1/root
mkfs.xfs /dev/vg1/home
```
### **Mount the filesystems**
```bash
mount /dev/vg1/root /mnt
mount --mkdir /dev/vg1/home /mnt/home
mount --mkdir /dev/nvm10n1p1 /mnt/boot
```
&nbsp;

# **Installation** 
### **Pacstrap**
```bash
# Once the drives are setup run pacstrap to install essential packages to the newly mounted system at /mnt

pacstrap /mnt base linux linux-headers linux-zen linux-zen-headers linux-hardened linux-hardened-headers linux-firmware sof-firmware amd-ucode lvm2 mdadm git neovim reflector man-db dosfstools xfsprogs
```
### **Genfstab**
```bash
genfstab -U /mnt >> /mnt/etc/fstab

# You can use cat /etc/fstab to view the created file
```
### **Chroot**
```bash
arch-chroot /mnt
```
&nbsp;

# **Device Configuration**
### **mkinitcpio.conf**
```bash
# Add the encrypt and lvm2 hook to the mkinitcpio.conf

HOOKS=(base udev autodetect keyboard keymap consolefont modconf block mdadm_udev encrypt lvm2 filesystems fsck)
```
### **bootloader**
```bash
# Add the kernel parameter to the GRUB bootloader
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 cryptdevice=UUID="UUID_OF_DEVICE:cryptlvm root=/dev/vg1/root

# If using vim/neovim you can use the read command to get the UUID
:read ! blkid /dev/md0
```
