Example for multi apps with TLS and host based routing

1. Use already generated certs 
   1. Alternative, generate new certs by `cd ./certificates` and execute `./gencerts.sh` go up one dir `cd ..`
2. Apply certs to the cluster: `./apply-certs.sh`
3. Apply resources to the cluster: `./apply-resources`
4. Test curling each service: `./test.sh`



Done.