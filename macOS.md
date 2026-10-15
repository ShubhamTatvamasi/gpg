# macOS

Install GNU GPG:
```bash
brew install \
  gnupg \
  pinentry-mac
```

```bash
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg
```

pinentry-program /opt/homebrew/bin/pinentry-mac
default-cache-ttl 3600
default-cache-ttl-ssh 3600
max-cache-ttl 7200
max-cache-ttl-ssh 7200
enable-ssh-support

```
cat > ~/.gnupg/gpg-agent.conf << 'EOF'
pinentry-program /opt/homebrew/bin/pinentry-mac
default-cache-ttl 3600
default-cache-ttl-ssh 3600
max-cache-ttl 7200
max-cache-ttl-ssh 7200
enable-ssh-support
EOF
```

```
chmod 600 ~/.gnupg/gpg-agent.conf
```
