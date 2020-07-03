kubectl create -n istio-system secret tls ingress-cert-master-frontend --key=certificates/frontend.commonpool.lab.key --cert=certificates/frontend.commonpool.lab.crt
kubectl create -n istio-system secret tls ingress-cert-master-backend --key=certificates/backend.commonpool.lab.key --cert=certificates/backend.commonpool.lab.crt
