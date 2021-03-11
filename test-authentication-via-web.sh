if [[ -z "${EMAIL}" ]]; then
  echo "Configure EMAIL"
  exit 1
fi

if [[ -z "${PASSWORD}" ]]; then
  echo "Configure PASSWORD"
  exit 1
fi

if [[ -z "${CLIENT_ID}" ]]; then
  echo "Configure CLIENT_ID"
  exit 1
fi

if [[ -z "${REDIRECT_URI}" ]]; then
  echo "Configure $REDIRECT_URI"
fi

curl -d "session[password]=$PASSWORD" -d "session[email]=$EMAIL" "https://login-sandbox.procore.com/oauth/authorize?client_id=$CLIENT_ID&response_type=code&redirect_uri=http://localhost:8080/procore/redirect_url"