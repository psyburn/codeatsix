set :application, "codeatsix.infinum.hr"
set :repository,  "git@github.com:neektza/codeatsix.git"

set :scm, :git
set :user "www-data"

set :branch, "master"
set :deploy_via, :remote_cache

ssh_options[:forward_agent] = true

role :web, "vz3.infinum.hr"
role :app, "vz3.infinum.hr"
role :db,  "mysql.infinum.hr", :primary => true

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
