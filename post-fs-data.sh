MODDIR=${0%/*}

zram(){
swapoff /dev/block/zram0 /dev/null 2>&1
echo 1 > /sys/block/zram0/reset
echo $zramsize > /sys/block/zram0/disksize
mkswap /dev/block/zram0 /dev/null 2>&1
swapon /dev/block/zram0 /dev/null 2>&1
}
