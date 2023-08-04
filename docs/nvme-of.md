### NVMe-oF and ZFS as a storage medium for a Kubernetes cluster


sudo apt-get install rdma-core
sudo lspci | grep -i -E 'infiniband|roce'
lsmod | grep -i -E 'ib_|rdma_|mlx'

pip install configshell_fb --user
git clone git://git.infradead.org/users/hch/nvmetcli.git
cd nvmetcli
python3 setup.py install --prefix=/usr
python3 setup.py install --user
ln -sf /dev/null ~/.nvmetcli/log.txt
ln -sf /dev/null ~/.nvmetcli/history.txt

cat <<EOF > /etc/modules-load.d/nvmet.conf
nvmet
nvmet-tcp
nvmet-fc
nvmet-rdma
EOF

modprobe nvmet
modprobe nvmet-tcp
modprobe nvmet-fc
modprobe nvmet-rdma

echo "
cd /
ls
" | nvmetcli

echo "
cd /ports
create 1
cd 1
set addr adrfam=ipv4 trtype=tcp traddr=0.0.0.0 trsvcid=4420

saveconfig /etc/nvmet/config.json
" | nvmetcli


https://www.linuxjournal.com/content/data-flash-part-iii-nvme-over-fabrics-using-tcp
https://enterprise-support.nvidia.com/s/article/howto-configure-nvme-over-fabrics
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/managing_storage_devices/configuring-nvme-over-fabrics-using-nvme-rdma_managing-storage-devices
https://documentation.suse.com/es-es/sles/15-SP1/html/SLES-all/cha-nvmeof.html
https://github.com/democratic-csi/democratic-csi/blob/master/examples/zfs-generic-nvmeof.yaml
https://github.com/democratic-csi/charts/blob/master/stable/democratic-csi/values.yaml
https://www.mankier.com/8/nvmetcli
https://pastebin.com/Xq8VhBak
https://github.com/democratic-csi/democratic-csi#zol-zfs-generic-nfs-zfs-generic-iscsi-zfs-generic-smb-zfs-generic-nvmeof
