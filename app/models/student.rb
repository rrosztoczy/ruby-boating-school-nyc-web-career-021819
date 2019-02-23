# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# Student.find_student will take in a first name and output the student (Object) with that name
# Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)

class Student
    attr_reader :first_name
    @@all = []

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.find {|student| student.first_name == first_name }
    end

    def initialize(f_name)
        @first_name = f_name
        Student.all << self
    end

    def add_boating_test(student, test_name, test_status, instructor)
        BoatingTest.new(student, test_name, test_status, instructor)
    end

    #allow student to find and calculate grade % 
    def grade_percentage
        #Count all tests this student has passed
        tests_passed = BoatingTest.all.select {|test| test.student == self && test.test_status == "passed" }.length.to_f
        #Count all tests with this student
        all_tests = BoatingTest.all.select {|test| test.student == self}.length.to_f
        #Calculate percentage as float
        grade_percentage = tests_passed/all_tests
        grade_percentage.round(2)
    end

end
