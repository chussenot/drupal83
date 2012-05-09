
namespace :drupal83 do  
     
    desc "simple test"
    task :hello => [:dependent, :tasks] do
    	puts "hello"
    end

    desc "set ENV var"
    task :task_name => [:dependent, :tasks] do
       ENV['DRUPAL_VERSION'] = 6
    end
end 