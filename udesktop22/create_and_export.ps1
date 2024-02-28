vagrant destroy -f
vagrant up
#currently this may still bring up an interactive screen so it's commented out
#vagrant ssh -c 'apt-get update -yq && DEBIAN_FRONTEND=noninteractive apt-get upgrade -yq'
vagrant halt

VBoxManage sharedfolder remove "udesktop22" --name "vagrant"

VBoxManage startvm udesktop22 --type headless
echo "Waiting 120 seconds for VM to fully boot back up..."
sleep 40
echo "80 more seconds..."
sleep 40
echo "40 more seconds..."
sleep 40

ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 22003 -i ../keys/id_rsa root@localhost 'bash ~vagrant/teardown.sh'
echo "Waiting 20 seconds before shutting down VM..."
sleep 20

VBoxManage controlvm udesktop22 poweroff
sleep 5

VBoxManage modifyvm "udesktop22" --natpf1 delete "ssh"
VBoxManage modifyvm "udesktop22" --natpf1 delete "guestssh"

echo "Exporting to .ova. This may take a while."
rm -f "../ovas/udesktop22.ova"
VBoxManage export udesktop22 --output "../ovas/udesktop22.ova" --options nomacs

echo "Done!"
