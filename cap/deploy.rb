set :application, "__PROJECT_SLUG__"
set :repo_url, "__REPO_URL__"
set :deploy_to, "__ROOT_DIR__"
set :symfony_env,  "prod"
set :symfony_directory_structure, 3
set :sensio_distribution_version, 5
set :app_path, "app"
set :web_path, "web"
set :var_path, "var"
set :bin_path, "bin"
set :app_config_path, "app/config"
set :log_path, "var/logs"
set :cache_path, "var/cache"
set :symfony_console_path, "bin/console"
set :symfony_console_flags, "--no-debug"
set :controllers_to_clear, ["app_*.php"]
set :assets_install_path, "web"
set :assets_install_flags,  '--symlink'
set :linked_files, ["app/config/parameters.yml"]
set :linked_dirs, ["var/logs", "web/uploads", "var/sessions"]
set :permission_method, false
set :file_permissions_paths, ["var", "../../shared/var/logs", "../../shared/web/uploads", "../../shared/var/sessions"]

