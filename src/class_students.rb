class Student
    attr_accessor :name, :age, :dob, :rollno, :pincode
    def initialize(rollno, name, age, dob, pincode)
    @rollno = rollno
    @name = name
    @dob = dob
    @age = age
    @pincode = pincode
  end
 
#   def data
#     puts "rollno #{@rollno}, My name is #{@name} and I am #{@age} years old and DOB is #{@dob}, pincode: #{@pincode}"
#   end
end

students_data = [
    [1, "abi", 21, "1/1/2001", 643112], 
    [4, "benson", 22, "2/5/2000", 643551],
    [7, "catherine", 23, "6/3/1999", 643155],
    [9, "jack", 24, "7/7/1998", 643142],
    [10, "lokesh", 21, "8/12/2001", 643889],
    [11, "rathish", 25, "4/11/1997", 643209], 
    [14, "roshan", 25, "5/12/1997", 643219], 
    [18, "rozario", 26, "31/10/1995", 643141],
    [29, "varun", 26, "28/09/1995", 643481],
    [30, "vikram", 27, "10/09/1994", 643191]
]
students = students_data.map { |st|
    Student.new(st[0], st[1], st[2], st[3], st[4])
}

s1 = Student.new(1, "abi", 21, "1/1/2001", 643112)
s2 = Student.new(2, "benson", 22, "2/5/2000", 643551)
s3 = Student.new(3, "catherine", 23, "6/3/1999", 643155)
s4 = Student.new(4, "jack", 24, "7/7/1998", 643142)
s5 = Student.new(5, "lokesh", 21, "8/12/2001", 643889)
s6 = Student.new(6, "rathish", 25, "4/11/1997", 643209)
s7 = Student.new(7, "roshan", 25, "5/12/1997", 643219)
s8 = Student.new(8, "rozario", 26, "31/10/1995", 643141)
s9 = Student.new(9, "varun", 26, "28/09/1995", 643481)
s10 = Student.new(10, "vikram", 27, "10/09/1994", 643191)
# puts s6.name
puts "rollno #{s6.rollno}, My name is #{s6.name} and I am #{s6.age} years old and DOB is #{s6.dob}, pincode: #{s6.pincode}"





