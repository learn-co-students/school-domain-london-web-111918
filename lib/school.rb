require "pry"

class School

  def initialize(school_name)
     @school_name = school_name
     @roster = {}
   end

   def roster #getter
     @roster
   end

   def add_student(name, grade)
     # roster is the hash(object)
     if @roster[grade]
    # grade is the key of the roster
       @roster[grade] << name
    # pushing the value of name into the key of roster, which is an empty hash (i.e name into grade/yr)

     else
       @roster[grade] = [name]
    # the key of roster = [name] an array with the new name
    end
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
   @roster.each do |key, value|
    # the hash of roster broken into keys and values (key is grade, value is student)
    value.sort!
   end
 end

end

# s = School.new('bankfield')
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)

  # hash["new_key"] = []
  # hash["new_key"]<<"new_value_for__value_array"
