file "resources.rb" => ['resources/icons.qrc'] do 
  sh "rbrcc resources/icons.qrc -o resources.rb"
end


rule(/\_ui\.rb$/ => [
      proc {|tn| tn.sub(/\_ui\.rb$/, '.ui')}
]) do |t|
  sh "rbuic4 #{t.source} -o #{t.name}"
end

SRC = FileList['ui/ui_files/*.ui']
DST = SRC.sub('.ui', '_ui.rb')

task :default => ["resources.rb"] + DST

task :run => [:default] do
  sh "ruby main.rb"
end

task :console  do
  sh "irb -r ./db_models"
end

task :test_report do
  sh "ruby reports/test.rb"
end
