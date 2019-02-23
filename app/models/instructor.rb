class Instructor
    @@all = []

    def self.all
        @@all
    end


    def initialize
        Instructor.all << self
    end

    #add new test from instructor
    def add_boating_test(student, test_name, test_status)
        BoatingTest.new(student, test_name, test_status, self)
    end

    #abstract out method for finding test based on test name and student
    def find_test(student, test_name)
        BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
    end

    #all instructor to pass a student or create new test if test doesnt exit
    def pass_student(student, test_name)
        if  find_test(student, test_name) != nil
            find_test(student, test_name).test_status = "passed"
            find_test(student, test_name)
        else
            add_boating_test(student, test_name, "passed")
        end
    end

    #all instructor to fail a student or create new test if test doesnt exit
    def fail_student(student, test_name)
        if  find_test(student, test_name) != nil
            find_test(student, test_name).test_status = "failed"
            find_test(student, test_name)
        else
            add_boating_test(student, test_name, "failed")
        end
    end

end
