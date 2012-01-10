require_relative 'report_generator'


g = ReportGenerator.new(ExamSet.first, 'reports/exam_set.haml', 'reports/exam_group.haml')

File.open('output.html', 'w') do |f|
	g.render(f)
end


