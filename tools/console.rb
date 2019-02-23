require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

squidward = Instructor.new
crabby = Instructor.new
spongedad = Student.new("spongedad")
patty = Student.new("patrick")
fail1 = BoatingTest.new(spongedad, "fail1", "failed", squidward)
fail2 = BoatingTest.new(spongedad, "fail2", "failed", squidward)
fail3 = BoatingTest.new(patty, "fail1", "failed", crabby)
pass1 = BoatingTest.new(patty, "pass1", "passed", squidward)
pass2 = BoatingTest.new(spongedad, "pass2", "passed", squidward)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

