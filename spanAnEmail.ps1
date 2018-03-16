#For all those assholes who ignore "no junk mail" signs on the door. Spams an email once every 15 minutes.
$email = $args[0];
for ($true) {
    $EmailFrom = "otusmainen@gmail.com"
    $EmailTo =  $email
    $Subject = "Notification from XYZ" 
    $Body = "this is a notification from XYZ Notifications.." 
    $SMTPServer = "smtp.gmail.com" 
    $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
    $SMTPClient.EnableSsl = $true
    $SMTPClient.Credentials = New-Object System.Net.NetworkCredential("otusmainen@gmail.com", "Xanadu92"); 
    $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)	
    Start-Sleep -S 900;
}
#For extra evil, sign them up for newsletters from e.g. pornhub or something.
