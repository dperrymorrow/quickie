# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'sass', :input => 'source/scss', :output => 'compiled/css', :all_on_start => true, :smart_partials => true

guard :less, all_on_start: true, all_after_change: false, :input => 'source/less', :output => 'compiled/css' do
  watch %r{^source/less/.+(\.less)}
end

# You can use some options to change guard-haml configuration
# :output => 'public'                   set output directory for compiled files
# :input => 'src'                       set input directory with haml files
# :run_at_start => true                 compile files when guard starts
# :notifications => true                send notifictions to Growl/libnotify/Notifu
# :haml_options => { :ugly => true }    pass options to the Haml engine

guard 'haml', :output => 'compiled', :input => 'source/haml', :all_on_start => true, all_after_change: true do
  watch %r{^source/haml/.+(\.haml)}
end
