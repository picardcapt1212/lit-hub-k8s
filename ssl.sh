UR_DOMAIN="identitydatahub.com"
CERT_NAME="identitydatahub.com"
UR_NAMESPACE="default"
KEY_FILE=/etc/letsencrypt/live/${UR_DOMAIN}/privkey.pem
CERT_FILE=/etc/letsencrypt/live/${UR_DOMAIN}/fullchain.pem

kubectl create secret tls ${CERT_NAME} --key ${KEY_FILE} --cert ${CERT_FILE} -n ${UR_NAMESPACE}