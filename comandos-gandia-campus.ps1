#Comando para instalr active directory
Install-WindowsFeature –Name AD-Domain-Services –IncludeManagementTools


#Añadir dominio
#COmando no utilizado por error
PS C:\> 
Import-Module ADDSDeployment
Install-ADDSDomain `
-NoGlobalCatalog:$false `
-CreateDnsDelegation:$true `
-Credential (Get-Credential) `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThrshold" `
-DomainType "ChildDomain" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NewDomainName "gandia" `
-NewDomainNetbiosName "GANDIA" `
-ParentDomainName "smr.local" `
-NoRebootOnCompletion:$false `
-SiteName "Default-First-Site-Name" `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
