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

Restart Agent:
```bash
gpgconf --kill gpg-agent
gpgconf --launch gpg-agent
```

Unlock key once:
```bash
echo "test" | gpg --clearsign > /dev/null
```

Verify:
```bash
gpgconf --list-options gpg-agent | grep -E 'default-cache-ttl|max-cache-ttl'
```
