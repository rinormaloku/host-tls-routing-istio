for SUB in backend frontend
do
    curl -v -HHost:$SUB.commonpool.lab --resolve "$SUB.commonpool.lab:443:127.0.0.1" \
        --cacert certificates/commonpool.lab.crt "https://$SUB.commonpool.lab/"
done