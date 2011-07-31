require 'Qt'

class ClassFactory
  def self.str_to_klass(s)
	names = qt_name_to_ruby(s).split('::')
	names.inject(Object) do |obj, name|
	  obj.const_get(name)
	end
  end  
  
  def self.qt_name_to_ruby(s)
	(s[0] == 'Q' and  "#{s[0]}t::#{s[1..s.length]}") || s
  end
end
