# code here!

class School

attr_accessor :roster, :name, :grade

  
def initialize(school_name)
  @school_name = school_name
  @roster = {}
end

def add_student(name, grade)
  # roster[grade] ||= []
  # roster[grade] << name 
  
  if roster.has_key?(grade)
    roster[grade] << name
  else
    roster[grade] = []
    roster[grade] << name
  end
end

def grade(grade)
  roster[grade] 
end  

def sort
  roster.each { |grade, names| names.sort! {|a, b| a <=> b} }
end

end