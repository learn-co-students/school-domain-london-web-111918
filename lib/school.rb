# code here!
class School

  attr_accessor :roster, :student_name, :student_grade

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end

  def grade(student_grade)
    return roster[student_grade]
  end

  def sort
    roster.each do |student_grade, arrays|
      arrays.sort! do |a, b|
        a <=> b
      end
    end
  end


end



school = School.new("Bayside high School")
