class Student
    def initialize(rollno, name, age, dob, pincode)
    @rollno = rollno
    @name = name
    @dob = dob
    @age = age
    @pincode = pincode
  end
 
  def intro
    puts "rollno #{@rollno}, My name is #{@name} and I am #{@age} years old and DOB is #{@dob}, pincode: #{@pincode}"
  end
end

s1 = Student.new(1, "abi", 21, "1/1/2001", 643112)
s2 = Student.new(2, "benson", 22, "2/5/2000", 643551)
s3 = Student.new(3, "catherine", 23, "6/3/1999", 643155)
s4 = Student.new(4, "jack", 24, "7/7/1998", 643142)
s5 = Student.new(5, "lokesh", 21, "8/12/2001", 643889)
s6 = Student.new(6, "rathish", 25, "4/11/1997", 643209)
s7 = Student.new(7, "surya", 26, "31/10/1995", 643141)

s6.intro

