require 'net/smtp'

smtp_server_host = 'smtp.gmail.com'
port = 587
username = 'username_here'
password = 'password_here'
auth = :login

message = <<-END.split("\n").map!(&:strip).join("\n")
From: Private Person <from@example.com>
To: A Test User <to@example.com>
Subject: Hello world!

This is a test e-mail message.
END

Net::SMTP.start(smtp_server_host, port, smtp_server_host, username, password, auth) do |smtp|
  smtp.send_message(message, 'from@example.com', 'to@example.com')
end
