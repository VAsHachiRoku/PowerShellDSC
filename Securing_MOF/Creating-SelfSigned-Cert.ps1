# Securing the MOF File
# https://msdn.microsoft.com/en-us/powershell/dsc/securemof

# Target Node: Windows Server 2016 and Windows 10
$cert = New-SelfSignedCertificate -Type DocumentEncryptionCertLegacyCsp -DnsName 'DscEncryptionCert' -HashAlgorithm SHA256
# export the public key certificate
$cert | Export-Certificate -FilePath "$env:temp\DscPublicKey.cer" -Force

#Copy the Exported .cer file to the Authoring Node and Import to the Computer\Personal\My store