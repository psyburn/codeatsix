namespace :codeat6 do
  desc "Task that should be ran only once, sets up your development environment"
  task :init do
    sh "mv #{Rails.root}/config/database_template.yml #{Rails.root}/config/database.yml"
    Rake::Task['db:setup'].invoke
  end
end
