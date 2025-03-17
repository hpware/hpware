sudo apt update
sudo apt install -y curl gnupg2 ca-certificates lsb-release
curl -fsSL https://openresty.org/package/pubkey.gpg | sudo tee /usr/share/keyrings/openresty.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/openresty.gpg] http://openresty.org/package/debian $(lsb_release -cs) openresty" | sudo tee /etc/apt/sources.list.d/openresty.list
sudo apt update
sudo apt install -y openresty
