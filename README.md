# vm_template_staging_ps
PS script to change computer name to a random one + renew DHCP lease

I have created VM templats for Windows Server OS on my ESXi environment for rapid testing purposes. But after creating a new VM from a template, I had two main problems:
  1) Because all VM's created from this template have same computer name, it creates conflicts.
  2) Sometimes I had IP conflicts as well, because all VM's created from same template still have the same IP.
  
So basically this Powershell script just randomises a new computer name, changes it, also renews the DHCP lease, restarts the computer and completes the staging for my environment. Simple but useful.
