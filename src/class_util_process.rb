class Util
    def self.process(arr)
      result = []
      for e in arr
        yield(result, e)
      end
      result
    end
   
    def self.map(arr)
      process(arr){|result, e| result << yield(e)}
    end
  
     def self.select(arr)
      process(arr){|result, e| result << e if yield(e)}
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
  
  arr = ["ann", "robin", "cindy", "john"]
  result = Util.map(arr){|i| i}
  print result
  
  #select
  arr = 20.times.to_a
  result = Util.select(arr){|i| i % 2 == 0 }
  print result