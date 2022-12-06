# $parameters = @{
#     From                       = 'from@bar.com'
#     To                         = 'to@bar.com'
#     Subject                    = 'Email Subject'
#     Attachments                = @('C:\files\samplefile1.txt', 'C:\files\samplefile2.txt')
#     BCC                        = 'bcc@bar.com'
#     Body                       = 'Email body'
#     BodyAsHTML                 = $False
#     CC                         = 'cc@bar.com'
#     Credential                 = Get-Credential
#     DeliveryNotificationOption = 'onSuccess'
#     Encoding                   = 'UTF8'
#     Port                       = '25'
#     Priority                   = 'High'
#     SmtpServer                 = 'smtp.com'
#     UseSSL                     = $True
# }
# # Notice: Splatting requires @ instead of $ in front of variable name
# Send-MailMessage @parameter

#: Simple Send-MailMessage
# Send-MailMessage -From td@gmail.com -Subject "Email Subject" -To beaudia014@gmail.com -SmtpServer
# smtp.com

# Section 23.3: SMTPClient - Mail with .txt file in body message
# Define the txt which will be in the email body
$Txt_File = "c:\file.txt"
function Send_mail {
    #Define Email settings
    $EmailFrom = "source@domain.com"
    $EmailTo = "destination@domain.com"
    $Txt_Body = Get-Content $Txt_File -RAW
    $Body = $Body_Custom + $Txt_Body
    $Subject = "Email Subject"
    $SMTPServer = "smtpserver.domain.com"
    $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 25)
    $SMTPClient.EnableSsl = $false
    $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
}
$Body_Custom = "This is what contain file.txt : "