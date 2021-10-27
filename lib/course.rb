class Course
  attr_accessor :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    @students.length == @capacity
  end

  def enroll(student_to_enroll)
    @students << student_to_enroll
  end
end