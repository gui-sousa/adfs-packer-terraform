$PASSWORD= ConvertTo-SecureString –AsPlainText -Force -String P@ssw0rd

New-LocalUser -Name "adfs" -Description "Administrador Local Ansible" -Password $PASSWORD

Add-LocalGroupMember -Group "Administrators" -Member "adfs"