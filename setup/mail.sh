cd src/app/libraries/
sed -i 's/\$mail->SMTPAuth   = true;//g' email_lib.php
sed -i 's/\$mail->SMTPSecure = "tls";//g' email_lib.php
echo "mailcatcher --http-ip=0.0.0.0" >>~/.bashrc
