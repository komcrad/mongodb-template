# mongodb-template
A mongodb template using docker


# Installation  
## Get a certificate
`git clone https://github.com/certbot/certbot.git`  
`cd certbot`  
```
./certbot-auto certonly --manual --preferred-challenges=dns --email your@email.com --server https://acme-v02.api.letsencrypt.org/directory --agree-tos -d *.example.com -d example.com
```
`cd <location of certs>`  
`cat privkey.pem cert.pem > ~/mongodb-template/ssl/mongodb.pem`  

## Configure Users
Configure users by editing the setup_user.sh script in scripts/

## Start docker container
`./run.sh`
