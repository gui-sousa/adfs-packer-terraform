#Variaveis
$ADFSpwd = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force
$ADFScred = New-Object System.Management.Automation.PSCredential ("bwglab\guisousa", $ADFSpwd)
$ADFSnome = "adfs.bwglab.tk"
$ADFSprint = "bca353e112e562583441bf068cd17b2182234832"

#Configuração ADFS
Install-AdfsFarm -CertificateThumbprint $ADFSprint -FederationServiceName $ADFSnome -ServiceAccountCredential $ADFScred -OverwriteConfiguration

#Habilita Pagina de Login
Set-AdfsProperties -EnableIdpInitiatedSignonPage $True