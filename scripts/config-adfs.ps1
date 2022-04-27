#Variaveis
$ADFSpwd = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force
$ADFScred = New-Object System.Management.Automation.PSCredential ("bwglab\guisousa", $ADFSpwd)
$ADFSnome = "adfs.bwglab.tk"
$ADFSprint = "9010cbd8b183bfa676e1262c9d9f41f6d87dd2e3"

#Configuração ADFS
Install-AdfsFarm -CertificateThumbprint $ADFSprint -FederationServiceName $ADFSnome -ServiceAccountCredential $ADFScred -OverwriteConfiguration

#Habilita Pagina de Login
Set-AdfsProperties -EnableIdpInitiatedSignonPage $True