== Purpose ==
This is an experiment in creating a simple devops pipeline to help the
continuing development and exporting of the Capstone virtual machines.

Instead of manually setting up the VMs, all modifications to a base
Lubuntu/Vyos/Kali box are codified using Vagrant and simple scripts.

This means that:
 - Every aspect of capstone is intentional and documented
 - No unintentional .bash_history, files, or logs left behind (which students
   will find)
 - Changes can be quickly added, changed, and removed
 - Upgrades (e.g. apt upgrades) can in theory be automated, and even exported 
   to a google drive

= Installation ==

 - Upgrade VirtualBox to the latest version
 - Install Vagrant: https://developer.hashicorp.com/vagrant/install

== Running ==

To fully create and export a VM, cd into it's directory (e.g. pc2) and then run the
create-export.ps1 script.

This will start from a base VM, add every addition, and then export the result to a .ova file

Currently only the router and pc2 have been created.

Although the create-export script has a .ps1 (powershell) extension, it should in theory be able to run
on mac or linux as it only uses basic shell commands.

To experiment adding/removing certain aspects of a VM
 - start by looking at the Vagrantfile. This is where all VM changes are made
 - use vagrant commands such as vagrant up (bring a Virtual Machine up), and vagrant provision to detect new changes and implement them.
 - Vagrant is idempotent (safe to run the same command/script multiple times) but the scripts created probably aren't yet. This can be worked on

== Additional Information ==

- The goal was to keep this simple, so that it could be easily understood and
  maintained
- All shell scripts refrain from variables, conditionals, and loops in order
  to mimic commands that could have been typed in sequentially when manually
setting up a VM
- Vagrant has official Vyos and Kali VM base images (called boxes). There is no official Lubuntu
  Desktop 22.04 image, so a custom one was created and put in the boxes
folder using this guide: https://www.engineyard.com/blog/building-a-vagrant-box-from-start-to-finish/.


