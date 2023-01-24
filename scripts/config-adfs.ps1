#Variaveis
$ADFSpwd = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force
$ADFScred = New-Object System.Management.Automation.PSCredential ("bwglab\guisousa", $ADFSpwd)
$ADFSnome = "adfs.lab.com.br"
$ADFSprint = "5f53e807f15563d1f4631bd9ce05bd6ea3dbe5b1"

#Configuração ADFS
Install-AdfsFarm -CertificateThumbprint $ADFSprint -FederationServiceName $ADFSnome -ServiceAccountCredential $ADFScred -OverwriteConfiguration

#Habilita Pagina de Login
Set-AdfsProperties -EnableIdpInitiatedSignonPage $True

#Define imagem de Fundo para a pagina de Login
Set-AdfsWebTheme -TargetName default -Illustration @{path="c:\temp\src\fundo.png"}

#Define logotipo na pagina de Login
Set-AdfsWebTheme -TargetName default -Logo @{path="c:\temp\src\logo.png"}
