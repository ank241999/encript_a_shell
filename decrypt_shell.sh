#!/bin/bash
echo "Enter the passphrase to decrypt the script:"
read -s passphrase
echo
openssl enc -d -aes-256-cbc -in encrypted_script.enc -out decrypted_script.sh -k "$passphrase"
chmod +x decrypted_script.sh
./decrypted_script.sh
