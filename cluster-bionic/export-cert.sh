mkdir -p certs
grep 'client-certificate-data' $HOME/.kube/config | awk '{print $2}' | base64 -d | openssl x509 -out certs/client.crt
grep 'certificate-authority-data' $HOME/.kube/config | awk '{print $2}' | base64 -d | openssl x509 -out certs/ca.crt
grep 'client-key-data' $HOME/.kube/config | awk '{print $2}' | base64 -d >> certs/client.key


