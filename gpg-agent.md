# gpg-agent

Update `gpg-agent` config:
```bash
vim ~/.gnupg/gpg-agent.conf
```

Store cache for 10 years:
```bash
default-cache-ttl 315360000
max-cache-ttl 315360000
```

Unlock key once:
```bash
echo "test" | gpg --clearsign > /dev/null
```

Restart Agent:
```bash
gpgconf --kill gpg-agent
gpgconf --launch gpg-agent
```

Test it:
```bash
gpg-connect-agent 'GETINFO s2k_count' /bye
```
