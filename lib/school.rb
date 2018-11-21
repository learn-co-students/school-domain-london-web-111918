require 'pry'

class School
  #attr_accessor
  #attr_reader :name, :students, :grades

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster #getter
    @roster
  end

  def add_student(student, grade)
    if @roster[grade].class == Array
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #binding.pry
    @roster.each {|key, value| value.sort!} #need to sort val in alphabetical order
    #binding.pry
  end

end
