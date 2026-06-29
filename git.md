# Git


Configure Git to use the key:
```bash
git config --global user.signingkey shubhamtatvamasi@gmail.com
git config --global user.signingkey shubham.tatvamasi@portainer.io
```

Enable signing for all commits:
```bash
git config --global commit.gpgsign true
```

Sign all tags too:
```bash
git config --global tag.gpgSign true
```


