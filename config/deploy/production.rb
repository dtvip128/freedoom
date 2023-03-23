set :stage, :production
set :rails_env, :production
set :branch, "main"
set :deploy_to, "/home/deploy/freedoom"
server "3.237.195.41", user: "deploy", roles: %w{app db web}
