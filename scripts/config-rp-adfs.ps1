#Variaveis
$RPName = "Work"
$RPLink = "https://apiplusauth.com.br/"

#Cria Relação de Confiança WS Federantion
Add-AdfsRelyingPartyTrust -Name $RPName -Identifier $RPLink -WSFedEndpoint $RPLink

#Define permissão de segurança para a RP
Set-AdfsRelyingPartyTrust -TargetName $RPName -AccessControlPolicyName "Permit everyone"
