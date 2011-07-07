 
module Person
  
  def full_name
	"#{self.name} #{self.surname}"
  end
  
  def to_s
	full_name
  end
end