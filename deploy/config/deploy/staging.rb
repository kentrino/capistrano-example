# role :web, %w{root@localhost}

# https://stackoverflow.com/questions/25564935/capistrano-3-set-ssh-port-but-22-is-still-used
server "localhost", user: "root", password: "test", roles: %w{app}, port: 3022

# set :ssh_options, {
#   port: 3022,
#   forward_agent: true,
#   keys: ['~/.ssh/id_rsa']
# }
