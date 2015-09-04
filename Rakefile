desc 'Initialise NeoBundle'
task :default do
  system 'git clone https://github.com/Shougo/neobundle.vim bundle/neobundle.vim'
  system 'vim +NeoBundleInstall +qall'
end

desc 'Update plugins'
task :update_plugins do
  system 'vim +NeoBundleInstall!'
end
