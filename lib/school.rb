require 'pry'

class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def sort
    @roster.each {|grade, student| student.sort!}
  end

  def grade(grade)
    @roster[grade]
  end

end
