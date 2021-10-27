class Student
  attr_accessor :name, :age, :scores

  def initialize(name_age)
    @name = name_age[:name]
    @age = name_age[:age]
    @scores = []
  end

  def log_score(score_to_log)
    @scores << score_to_log
  end

  def grade
    @scores.sum.to_f / @scores.length
  end
end