# you need to be in this directory to execute the script.
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=commonpool Inc./CN=commonpool.lab' -keyout commonpool.lab.key -out commonpool.lab.crt

openssl req -out frontend.commonpool.lab.csr -newkey rsa:2048 -nodes -keyout frontend.commonpool.lab.key -subj "/CN=frontend.commonpool.lab/O=commonpool organization"
openssl x509 -req -days 365 -CA commonpool.lab.crt -CAkey commonpool.lab.key -set_serial 0 -in frontend.commonpool.lab.csr -out frontend.commonpool.lab.crt

openssl req -out backend.commonpool.lab.csr -newkey rsa:2048 -nodes -keyout backend.commonpool.lab.key -subj "/CN=backend.commonpool.lab/O=commonpool organization"
openssl x509 -req -days 365 -CA commonpool.lab.crt -CAkey commonpool.lab.key -set_serial 0 -in backend.commonpool.lab.csr -out backend.commonpool.lab.crt
