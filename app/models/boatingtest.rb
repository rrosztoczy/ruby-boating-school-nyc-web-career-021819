class BoatingTest
    attr_accessor :test_status
    attr_reader :test_name, :student, :instructor
    @@all = []

    def self.all
        #replicate database
        @@all
    end

    def initialize(student, test_name, test_status, instructor)
        #initialize the linking object with many objects, other criteria, add to "database"
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        BoatingTest.all << self
    end

end
