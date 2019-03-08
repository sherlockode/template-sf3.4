Rake::Task["composer:install"].clear_actions

namespace :composer do
    task :install do
        on roles(:all) do
            execute "docker-compose -f __ROOT_DIR__/docker-compose.yml run --workdir=\"#{release_path}/\" php composer install --prefer-dist --no-interaction --quiet --optimize-autoloader"
        end
    end
end


after "deploy:updated", "composer:install"
