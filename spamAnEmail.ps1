# For all those assholes who ignore "no junk mail thank you!" signs on the door. Spams an email once every 15 minutes.
$email = $args[0];
for ($true) {
    $EmailFrom = "email@gmail.com"
    $EmailTo =  $email
    $Subject = "No junk mail thank you!" 
    $Body = "this is a notification from XYZ Notifications.. Did you know that you're an asshole?" 
    $SMTPServer = "smtp.gmail.com" 
    $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
    $SMTPClient.EnableSsl = $true
    $SMTPClient.Credentials = New-Object System.Net.NetworkCredential("email@gmail.com", "password"); 
    $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)	
    Start-Sleep -S 900;
}
# For extra evil, sign them up for free newsletters.
