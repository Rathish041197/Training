require_relative './binary_search_recursion.rb'

class Student
  attr_reader :id, :college, :branch, :section, :roll_no, :name, :aadhar_no, :pan_no
  def initialize(id, college, standard, section, roll_no, name, aadhar_no, pan_no)
    @id = id
    @college = college
    @branch = branch
    @section = sectiona
    @roll_no = roll_no
    @name = name
    @aadhar_no = aadhar_no
    @pan_no = pan_no
  end
  def uniq_key
    "#{college}-#{id}"
  end
  def <=>(rhs)
    self.uniq_key <=> rhs.uniq_key
  end
end
ann = Student.new(19106001, "arcas", "bsc_cs", "section_A", 01, "Ann", "GOBP082N", 14881767 )
# ben = Student.new(19106002, "arcas", "bsc_cs", "section_A", 02, "Ben", "GOBF071J", 15667263)
students_data = [
[19106001, "arcas", "bsc_cs", "section_A", 01, "Ann", "GOBP082N", 14881767], 
[19106002, "arcas", "bsc_cs", "section_A", 02, "Ben", "GOBF071J", 15667263], 
[19106003, "arcas", "bsc_cs", "section_A", 03, "Dani", "GOBD029K", 16778265], 
[19106004, "arcas", "bsc_cs", "section_B", 01, "Deb", "GOBV038S", 98767672], 
[19106005, "arcas", "bsc_cs", "section_B", 02, "Jo", "GOBC0845A", 56985641], 
[19106006, "arcas", "bsc_it", "section_A", 01, "Jeny", "GOBW0531Q", 78456925],
[19106007, "arcas", "bsc_it", "section_A", 02, "Peter", "GOBZ0921T", 45891254],
[19106008, "arcas", "bsc_it", "section_B", 01, "Paul", "GOBX0977G", 80236520],
[19106009, "arcas", "bsc_it", "section_B", 02, "Sam", "GOBP0766N", 96547852],
[19106010, "arcas", "bsc_it", "section_B", 03, "Xavier", "GOBU0123I", 90247563],
[19106001, "hicas", "bsc_math", "section_A", 01, "Abi", "GOBE0656O", 75896241], 
[19106002, "hicas", "bsc_math", "section_A", 02, "Bala", "GOBL0989M", 41256325], 
[19106003, "hicas", "bsc_math", "section_B", 01, "Dinesh", "GOBV0754Z", 89654752], 
[19106004, "hicas", "bsc_phy", "section_A", 01, "Deb", "GOBX0123P", 14523658], 
[19106005, "hicas", "bsc_phy", "section_B", 01, "Jo", "GOBZ0564C", 48571230], 
[19106006, "hicas", "bsc_phy", "section_B", 02, "Jessi", "GOBW0912L", 42569821],
[19106007, "hicas", "bsc_it", "section_A", 01, "Paari", "GOBK0101R", 14256985],
[19106008, "hicas", "bsc_it", "section_A", 02, "Paul", "GOBS0717T", 96321478],
[19106009, "hicas", "bsc_it", "section_B", 01, "Sam", "GOBO0217M", 74123698],
[19106010, "hicas", "bsc_it", "section_B", 02, "Zara", "GOBA0562D", 52825864]
]
students = students_data.map { |st|
  Student.new(st[0], st[1], st[2], st[3], st[4], st[5], st[6], st[7])
}

students.each_with_index do |student, i|
  if(i != binary_search(students, student))
    raise "Error: Failed to correctly find #{student.uniq_key}"
  end
end
    
# out of range 
[0, 32].each do |id|
student = Student.new(id, "srcas", nil, nil, nil, nil, nil, nil)
  if(-1 != binary_search(students, student))
    raise "Error: Did not return -1 for number #{student}"
  end
end
    
    
# In Range, non-existent
[4, 8].each do |id|
student = Student.new(id, 'srcas', nil, nil, nil, nil, nil, nil)
  if(-1 != binary_search(students, student))
    raise "Error: Did not return -1 for number #{student}"
  end
end

puts "Binary Search works for students."







