require_relative 'report_generator'


g = ReportGenerator.new(ExamSet.first, 'reports/exam_set.haml')
g.render '~/lala.odt'


