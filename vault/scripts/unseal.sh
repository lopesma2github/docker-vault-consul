## CONFIG LOCAL ENV
echo "[*] Config local environment..."
alias vault='docker-compose exec vault vault "$@"'
export VAULT_ADDR=http://127.0.0.1:8200

## UNSEAL VAULT
echo "[*] Unseal vault..."
vault unseal -address=${VAULT_ADDR} $(grep 'Key 1:' ./scripts/keys.txt | awk '{print $NF}')
vault unseal -address=${VAULT_ADDR} $(grep 'Key 2:' ./scripts/keys.txt | awk '{print $NF}')
vault unseal -address=${VAULT_ADDR} $(grep 'Key 3:' ./scripts/keys.txt | awk '{print $NF}')
