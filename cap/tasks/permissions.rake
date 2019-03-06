def absolute_writable_paths
  linked_dirs = fetch(:linked_dirs)
  fetch(:file_permissions_paths).map do |d|
    Array(linked_dirs).include?(d) ? shared_path.join(d) : release_path.join(d)
  end
end

namespace :symfony do
    task :permissions do
        next unless any? :file_permissions_paths
        on release_roles :all do
            paths = absolute_writable_paths
            execute :sudo, :setfacl, "-R -m u:www-data:rwX -m u:$(whoami):rwX", paths
            execute :sudo, :setfacl, "-dR -m u:www-data:rwX -m u:$(whoami):rwX", paths
        end
    end
end


after "deploy:updating", "symfony:permissions"
