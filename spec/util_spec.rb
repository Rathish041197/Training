require_relative '../lib/util'


class Students
  attr_reader :id, :college, :branch, :section, :roll_no, :name, :aadhar_no, :pan_no, :pincode

  def initialize(id, college, branch, section, roll_no, name, aadhar_no, pan_no, pincode)
    @id = id
    @college = college
    @branch = branch
    @section = section
    @roll_no = roll_no
    @name = name
    @aadhar_no = aadhar_no
    @pan_no = pan_no
    @pincode = pincode
  end
end

RSpec.describe 'Util' do
  let(:ann) { Students.new(19_106_001, 'arcas', 'bsc_cs', 'section_A', 0o01, 'Ann', 112_536_654_858, 'BHVHG4851J', 654_425) }
  let(:ben) { Students.new(19_106_002, 'arcas', 'bsc_cs', 'section_A', 0o02, 'Ben', 458_522_664_488, 'BSDEF4851J', 652_215) }
  let(:cindy) { Students.new(19_106_003, 'arcas', 'bsc_cs', 'section_A', 0o03, 'Cindy', 552_536_654_858, 'BHVNN4851J', 633_218) }
  let(:sana) { Students.new(19_106_004, 'arcas', 'bsc_cs', 'section_A', 0o04, 'Sana', 872_536_654_858, 'BSDFC4851J', 659_415) }

  context '#map' do
    let(:arr) { [ann, ben, cindy, sana] }
    it 'should map names of students from student array' do
      expected_names = %w[Ann Ben Cindy Sana]
      names = Util.map(arr) { |s| s.name }
      expect(names).to eq(expected_names)

      expect(Util.map(arr, &:name)).to eq(expected_names)
    end

    it 'should map numbers to its multiple of 2' do
      numbers = [1, 2, 3, 4, 5]
      expected_result = [2, 4, 6, 8, 10]
      expect(Util.map(numbers) { |n| n * 2 }).to eq(expected_result)
    end
  end

  context '#select' do
    let(:arr) { 20.times.to_a }
    it 'should select even numbers from numbers array' do
      expected_even_numbers = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
      even = Util.select(arr) { |e| e.even? }
      expect(even).to eq(expected_even_numbers)

      expect(Util.select(arr, &:even?)).to eq(expected_even_numbers)
    end
  end

  context '#find' do
    let(:arr) { 20.times.to_a }
    let(:number) { 4 }
    it 'should find the number in an array' do
      expected_to_find_number = [4]
      find = Util.find(arr){ |e| e == number}
      expect(find).to eq(expected_to_find_number)
      expect(Util.find(arr){ |e| e == number}).to eq(expected_to_find_number)
    end
  end
  context '#max_by' do
    let(:arr) { 20.times.to_a }
    it 'should find the max value' do
      expected_max = 19
      max = Util.max_by(arr){ |e| e}
      expect(max).to eq(expected_max)
      expect(Util.max_by(arr){ |e| e}).to eq(expected_max)
    end
  end

  context '#sum' do
    let(:arr) { [1, 2, 3, 4, 5] }
    it 'should add all numbers' do
      expect(Util.sum(arr)).to eq(15)
    end
  end
end
