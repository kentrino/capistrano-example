# Setup
```
docker compose up -d --build sshd
```

# Run
```
chdir deploy
bundle install
bundle exec cap staging deploy
```

# Check
```
docker compose exec sshd cat /etc/noop.conf
```


# Stop
Stops containers and removes containers, networks, volumes, and images created by up.

```
docker compose down sshd
```

