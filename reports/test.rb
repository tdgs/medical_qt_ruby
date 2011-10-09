require_relative 'report_generator'


g = ReportGenerator.new(ExamSet.first, 'reports/exam_set.haml', 'reports/exam_group.haml')
g.render('output.html')


