desc 'Pulls in all submodule bundles'
task :default do
  system 'git submodule init'
  system 'git submodule update'
end

# Src: https://github.com/thomasjo/dotfiles/blob/master/Rakefile
desc 'Updates all Git submodules in the bundle directory.'
task :update_submodules do
  bundle_path = File.join('**', 'bundle', '**', 'vim-*')
  Dir.glob(bundle_path) do |path|
    next unless File.directory?(File.join(path, '.git'))
    Dir.chdir(path) do
      puts "Updating '#{path}' bundle..."
      system 'git checkout master'
      system 'git pull'
    end
  end
end
