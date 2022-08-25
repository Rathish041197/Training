class Util 
  def self.map(arr)
    result = []
    for ele in arr
      if block_given?     
        name =  yield (ele)
        result << name
      end
    end
    result
  end 
end

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

ann = Students.new(19106001, "arcas", "bsc_cs", "section_A", 01, "Ann", 112536654858, "BHVHG4851J", 654425)
robin = Students.new(19106002, "arcas", "bsc_cs", "section_A", 02, "robin", 458522664488, "BSDEF4851J", 652215)
cindy = Students.new(19106003, "arcas", "bsc_cs", "section_A", 03, "cindy", 552536654858, "BHVNN4851J", 633218)
john = Students.new(19106004, "arcas", "bsc_cs", "section_A", 04, "john", 872536654858, "BSDFC4851J", 659415)

arr = [ann, robin, cindy, john]
result = Util.map(arr){|i| i.name}
print result
