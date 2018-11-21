# require 'pry'

class School

def initialize(name)
  @name = name
  @roster = {}
end

attr_accessor :name, :roster


def add_student(name, grade)
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
  sorted_roster = {}
roster.each do |grade, name_array|
  sorted_roster[grade] = name_array.sort

end
sorted_roster
end

end

# binding.pry
# 0
