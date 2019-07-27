# gpg

### Setup your GPG key pair

Generate new key
```bash
gpg --expert --full-gen-key
```
> Select the following: `ECC and ECC` then `Curve 25519`, valid for = `0`, Real name, Email address.  
---

### Export and Import Public keys

Get the list of public keys you have
```bash
gpg --list-keys
```

Get the list for secret keys you have
```bash
gpg --list-secret-keys
```

Export your public key to the file `shubhamtatvamasi.gpg`
```bash
gpg --armor --export shubhamtatvamasi@gmail.com > shubhamtatvamasi.gpg
```

Import public key
```bash
gpg --import shubhamtatvamasi.gpg
```

Delete your secret and public key using Key ID
```bash
gpg --delete-secret-keys 8C64425F9A188D919F4A37E39216C63F5680B5A8
gpg --delete-key 8C64425F9A188D919F4A37E39216C63F5680B5A8
```
---

### Encrypt and Decrypt file using gpg keys

Create a secret file
```bash
echo "This is a secret" > file
```

Encrypt the file, and mention the recipient's email.
```bash
gpg -r shubhamtatvamasi@gmail.com -e file
```

Now you can shred and remove the original file
```bash
shred -u file
```

Decrypt the file
```bash
gpg -d file.gpg
gpg -d file.gpg > file # save output to the file
```
