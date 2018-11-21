class School
  attr_accessor :student, :grade, :roster, :sort 
  
  def initialize(school_name)
    # @school_name = school_name
    @roster = {}
  end
  
  def add_student(student, grade)
    #If the grade doesn't exist then create an empty key/pair and push grade key value into it 
    if roster[grade] == nil 
        roster[grade] = []
        roster[grade] << student
    else
      #add students to existing grade 
    roster[grade] << student
  end
end

 def grade(grade)
   #retrieve all values from certain grade 
    roster[grade]
 end
  
   def sort
  roster.each do |grade, names| 
    names.sort! {|a, b| a <=> b}
  end
  end  
  
end 