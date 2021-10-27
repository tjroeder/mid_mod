require './lib/student'
require './lib/course'

RSpec.describe Course do
  let!(:course)   { Course.new('Calculus', 2) }
  let!(:student1) { Student.new({name: 'Morgan', age: 21}) }
  let!(:student2) { Student.new({name: 'Jordan', age: 29}) }

  describe '#initialize' do
    it 'exists' do
      expect(course).to be_instance_of(Course)
    end

    it 'has a name' do
      expect(course.name).to eq('Calculus')
    end

    it 'has capacity' do
      expect(course.capacity).to eq(2)
    end

    it 'has blank array of students' do
      expect(course.students).to eq([])
    end
  end

  describe '#full?' do
    it 'can return class full status when no one is enrolled' do
      expect(course.full?).to eq(false)
    end

    it 'can return full status when class is full' do
      course.enroll(student1)
      course.enroll(student2)

      expect(course.full?).to eq(true)
    end
  end

  describe '#enroll' do
    it 'can enroll students in class' do
      course.enroll(student1)
      course.enroll(student2)

      expect(course.students).to eq([student1, student2])
    end
  end
end