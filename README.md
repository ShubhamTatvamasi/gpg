# gpg

Generate new key
```bash
gpg --expert --full-gen-key
```
> Select the following: `ECC and ECC` then `Curve 25519`, valid for = `0`, Real name, Email address.  

Get the list of keys you have
```bash
gpg --list-keys
```

Create a secret file
```bash
echo "This is a secret" > file
```

Encrypt the file, and mention the senders email.
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
