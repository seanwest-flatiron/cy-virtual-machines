vagrant destroy -f
vagrant up
vagrant ssh -c 'sudo apt update -yq && sudo DEBIAN_FRONTEND=noninteractive apt upgrade -yq'
vagrant halt

VBoxManage sharedfolder remove "kali" --name "vagrant"

VBoxManage startvm kali --type headless
echo "Waiting 120 seconds for VM to fully boot back up..."
sleep 40
echo "80 more seconds..."
sleep 40
echo "40 more seconds..."
sleep 40

ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 22002 -i ../keys/id_rsa root@localhost 'bash ~vagrant/teardown.sh'
echo "Waiting 20 seconds before shutting down VM..."
sleep 20

VBoxManage controlvm kali poweroff
sleep 5

VBoxManage modifyvm "kali" --natpf1 delete "ssh"
VBoxManage modifyvm "kali" --natpf1 delete "guestssh"

echo "Exporting to .ova. This may take a while."
rm -f "../ovas/kali.ova"
VBoxManage export kali --output "../ovas/kali.ova" --options nomacs

echo "Done!"
