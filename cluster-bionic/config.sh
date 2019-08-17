mkdir -p ~/.k8s-vagrant
cp certs/* ~/.k8s-vagrant/
cd ~/.k8s-vagrant && kubectl config set-credentials kubernetes-admin --client-certificate=client.crt --client-key=client.key
cd ~/.k8s-vagrant && kubectl config set-cluster vagrant --server=https://192.168.205.10:6443 --certificate-authority=ca.crt
cd ~/.k8s-vagrant && kubectl config set-context k8s/vagrant --user=kubernetes-admin --cluster=vagrant
cd ~/.k8s-vagrant && kubectl config use-context k8s/vagrant
kubectl version
