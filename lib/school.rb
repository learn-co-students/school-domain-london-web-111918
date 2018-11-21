# code here!

class School
  
  attr_accessor :roster, :student_name, :age
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student_name|
      student_name.sort! {|a,b| a <=> b}
    end
  end
    
end