set :application, 'loomio'
set :repo_url, 'https://github.com/piratas-ar/loomio'
set :linked_files, %w{.env}
set :linked_dirs, %w{public/system log tmp/pids db/backups angular/node_modules}

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :bundle_flags, '--deployment'
set :delayed_job_bin_path, 'script'

set :default_env, path: '/home/app/.nvm/versions/node/v4.8.0/bin:$PATH'

namespace :deploy do
  desc 'Reiniciar delayed jobs'
  task :restart do
    invoke 'delayed_job:restart'
  end

  desc 'Hace un backup de la base de datos antes de migrarla'
  task :backup, [:set_rails_env] do
    on primary :db do
      within release_path do
        with rails_env: fetch(:rails_env) do
          # https://gist.github.com/rsutphin/9010923
          resolved_release_path = capture(:pwd, "-P")
          release_name = resolved_release_path.split('/').last
          backup = "#{resolved_release_path}/db/backups/#{release_name}.psql.gz"
          # TODO no hardcodear la base de datos
          execute "pg_dump loomio | gzip --stdout >#{backup}"
        end
      end
    end
  end
end

namespace :loomio do
  desc 'Correr tareas de loomio'
  task :deploy do
    on roles(:web) do
      within release_path do
        execute :rake, 'deploy:build'
      end
    end
  end
end

namespace :faye do
  desc 'Iniciar faye'
  task :start do
    on roles(:web) do
      within release_path do
        execute :bundle, 'exec rackup --pid tmp/pids/faye.pid --daemonize -s thin -E production private_pub.ru'
      end
    end
  end

  desc 'Detener faye'
  task :stop do
    on roles(:web) do
      within release_path do
        execute :pkill, '--signal INT --pidfile tmp/pids/faye.pid'
      end
    end
  end

  desc 'Reiniciar faye'
  task :restart do
    invoke 'faye:stop'
    invoke 'faye:start'
  end
end

before 'deploy:migrate', 'deploy:backup'
before 'deploy:compile_assets', 'loomio:deploy'
after 'deploy:publishing', 'deploy:restart'
after 'deploy:publishing', 'faye:restart'
