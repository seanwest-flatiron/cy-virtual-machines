vagrant plugin install vagrant-vyos
vagrant destroy -f
vagrant up
sleep 20
vagrant halt
sleep 20

# Remove the port forwarding rules Vagrant added
VBoxManage modifyvm "router" --natpf1 delete "ssh"

echo "Exporting to .ova. This may take a while."
VBoxManage export router --output "../ovas/router.ova"

echo "Done!"
