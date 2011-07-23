# encoding: utf-8
require_relative 'exams'

DefaultWidget = 'QLineEdit'
root = ExamFieldGroup.first_or_create(:name => 'root')
g = ExamFieldGroup.first_or_create(:name =>'ΚΟΛΠΙΚΟ ΕΠΙΧΡΙΣΜΑ', :parent => root)
epith = ExamFieldGroup.first_or_create(:name => 'Επιθηλιακά στοιχεία', :parent => g)
['Από την επιπολής στιβάδα', 'Από την διάμεση στιβάδα', 'Από την παραβασική στιβάδα'].each do |name|
  ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => epith)
end

flegm =  ExamFieldGroup.first_or_create(:name => 'Φλεγμονόδη Στοιχεία', :parent => g)
['Πολυμορφοπύρηνα Λευκά', 'Λεμφοκύτταρα','Ιστιοκύτταρα', 'Ερυθροκύτταρα'].each do |name|
  ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => flegm)
end

xlorida =  ExamFieldGroup.first_or_create(:name => 'Χλωρίδα', :parent => g)
['Κολποβακτηρίδια (B. Doderlein)', 'Μύκητες','Τριχομονάδες', 'Κόκκοι', 'Κοκκοβακτηρίδια', 'Αιμόφιλος(Gardin. Vag'].each do |name|
  ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => xlorida)
end

loipa =  ExamFieldGroup.first_or_create(:name => 'Λοιπά Στοιχεία', :parent => g)
['Κυτταρόλυση', 'Δείκτης Ωρίμανσης κολπικού επιθηλίου (Δ.Ω)'].each do |name|
  ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => loipa)
end

traxilika = ExamFieldGroup.first_or_create(:name => 'ΤΡΑΧΗΛΙΚΑ ΕΠΙΧΡΙΣΜΑΤΑ', :parent => root)
epith2 =  ExamFieldGroup.first_or_create(:name => 'Επιθηλιακά στοιχεία', :parent => traxilika)
['Πλακώδη Κύτταρα', 'Αδενικά Κύτταρα', 'Μεταπλαστικά Κύτταρα'].each do |name|
  ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => epith2)
end

flegm2 =  ExamFieldGroup.first_or_create(:name => 'Φλεγμονόδη Στοιχεία', :parent => traxilika)
['Πολυμορφοπύρηνα Λευκά', 'Λεμφοκύτταρα','Ιστιοκύτταρα', 'Ερυθροκύτταρα'].each do |name|
  ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => flegm2)
end 

%w(ΠΑΡΑΤΗΡΗΣΕΙΣ ΣΥΜΠΕΡΑΣΜΑΤΑ).each do |name|
   ExamField.first_or_create(:name => name, :widget => DefaultWidget, :exam_field_group => root)
end 
