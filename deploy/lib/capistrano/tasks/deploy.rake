namespace :deploy do
    def template(from, to)
        erb = File.read(File.expand_path("../../templates/#{from}", __FILE__))
        upload! StringIO.new(ERB.new(erb).result(binding)), to
    end

    desc "Put upstart config."
    task :put_upstart_config do
        on roles(:app) do
            set :application, 'kentrino'
            template 'noop.conf.erb', '/tmp/noop.conf'
            sudo "mv /tmp/noop.conf /etc/noop.conf"
            # sudo 'initctl start noop'
        end
    end

    before :updating, :put_upstart_config
end
