set :use_sudo, true
# set :repo_url, 'git@github.com:kentrino/capistrano-example.git'
set :repo_url, 'https://github.com/kentrino/capistrano-example.git'

set :deploy_to, '/app'

# deploy_to以下に以下のディレクトリを配置する
# releases: 過去のデプロイ（実体）
# current: 現在のデプロイ（releasesへのシンボリックリンク）
# shared: リリース・バージョンに関係なく保持されるもの
# linked_dirsに追加すると、そのディレクトリはshared以下に実体を持つようになり
# 各releasesからshared以下にシンボリックリンクが張られる
set :linked_dirs, fetch(:linked_dirs, []).push('log')

# デプロイ先でのソースのバージョンの保持数
set :keep_releases, 5
