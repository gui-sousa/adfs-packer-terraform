#Variaveis
$RPName = "4beeWork"
$RPLink = "https://apiplusauth.4bee.com.br/"

#Cria Relação de Confiança WS Federantion
Add-AdfsRelyingPartyTrust -Name $RPName -Identifier $RPLink -WSFedEndpoint $RPLink

#Define permissão de segurança para a RP
Set-AdfsRelyingPartyTrust -TargetName $RPName -AccessControlPolicyName "Permit everyone"
