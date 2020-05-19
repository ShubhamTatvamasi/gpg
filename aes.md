# AES

create a file with secret data
```bash
cat << EOF > secrets.txt
Secret Data
EOF
```

encrypt the file using password: `password`
```bash
openssl aes-256-cbc -a -salt -in secrets.txt -out secrets.txt.enc
```

check the shasum of file
```bash
sha256sum secrets.txt.enc
```
> f211fcb4b26b42635fc4858dbea13b680ff20c32e1463ccc4638b61b472e8fbf  secrets.txt.enc

delete the file
```bash
rm secrets.txt.enc
```

encrypt the file again using the same password: `password`
```bash
openssl aes-256-cbc -a -salt -in secrets.txt -out secrets.txt.enc
```

check the shasum again
```bash
sha256sum secrets.txt.enc
```
> 2f02a6fb60ed6265a8f841d27779b8deb65e4b38995133d3a73782dfaedf280e  secrets.txt.enc

### Because we are using `-salt` that's why output is different each time.
