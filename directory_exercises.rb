def input_students
  puts "Please enter the names of the students and their cohort, separated by a comma. For example, 'The Green Goblin, September'"
  puts "To finish, just hit return twice" # so that the 2nd return effectively makes an "empty" name variable
  # create an empty array
  students = []
  # get the first name 
  user_input = gets.chomp
  p arr = user_input.split(", ")
  p name = arr[0]
  p cohort = arr[1].to_sym
    # while the name is not empty, repeat the code
  while 
    #add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    #get another name from the user
    p user_input = gets.chomp
    break if user_input.empty? # need this condition before the .to_sym method because when user hits return, the array will be empty, therefore making name and cohort evaluate to nil. Can't 
    p arr = user_input.split(", ")
    p name = arr[0]
    p cohort = arr[1].to_sym
  end
  #return the array of students
  puts students
  puts students.length
  students 
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  n = 0 
  while n < students.length
    puts "#{n+1}. #{students[n][:name]}, (#{students[n][:cohort]} cohort)"
    n += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# nothing happens until we call the methods:
students = input_students # the students variable will equal the return value of input_students so input_students needs a return value not just a "puts"
print_header
print(students)
print_footer(students)