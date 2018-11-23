
# code here!
class School

  def initialize(school)
    @school= school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster[grade]
       @roster[grade]<< name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade,name| name.sort! }
  end

end
