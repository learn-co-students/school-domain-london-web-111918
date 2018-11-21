# code here!
class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_roster = {}
    @roster.each {|grade, students| new_roster[grade] = students.sort}
    new_roster
  end

end
