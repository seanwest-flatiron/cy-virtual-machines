vagrant destroy -f
vagrant up
vagrant ssh -c 'sudo apt update && sudo apt upgrade -y'
vagrant halt

VBoxManage startvm pc2 --type headless
echo "Waiting 40 seconds for VM to fully boot back up..."
sleep 20
echo "20 more seconds..."
sleep 20

ssh -o StrictHostKeyChecking=no -p 21902 -i ../keys/id_rsa root@localhost 'bash ~vagrant/teardown.sh'
sleep 20

VBoxManage controlvm pc2 poweroff
sleep 5

# Remove the 2nd NIC that vagrant was using
VBoxManage modifyvm pc2 --nic2 null
VBoxManage modifyvm pc2 --nic2 none

echo "Exporting to .ova. This may take a while."
VBoxManage export pc2 --output "../ovas/pc2.ova"

echo "Done!"
