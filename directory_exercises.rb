def input_students
  puts "Please enter the names of the students and their cohort, separated by a comma. For example, 'The Green Goblin, September'"
  puts "To finish, just hit return twice" # so that the 2nd return effectively makes an "empty" user_input to break the while loop below
  students = [] # create an empty array
  while # while the name is not empty, repeat the code (break line below)
    p user_input = gets.chomp # get the first name 
    break if user_input.empty? # need this condition before the .to_sym method because when user hits return, the array will be empty, therefore making name and cohort evaluate to nil. Can't 
    p arr = user_input.split(", ") # allows user to enter the student name and the cohort and splits it into an array where first element is the name
    p name = arr[0]
    p cohort = arr[1].to_sym
    #add the student hash to the array:
    students << {name: name, cohort: cohort}
    puts students.count < 2 ? "Now we have 1 student" : "Now we have #{students.count} students"
  end
  #return the array of students
  puts students
  puts students.length
  students 
end

def print_header
  puts "The students of Villains Academy".center(150)
  puts "-------------".center(150)
end

def print(students)
  n = 0 
  while n < students.length
    puts "#{n+1}. #{students[n][:name]}, (#{students[n][:cohort]} cohort)".center(150)
    n += 1
  end
end

def cohort_groups(students)
  sorted_by_cohort = {}
  students.each do |student|
    cohort = student[:cohort]
    if sorted_by_cohort[cohort] == nil # does cohort already exist as a key on the hash? If not, create it and set equal to an empty array
      sorted_by_cohort[cohort] = []
    end
    sorted_by_cohort[cohort] << student[:name] # add name to the array
  end
  p sorted_by_cohort
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students" if students.count > 0
end

# nothing happens until we call the methods:
students = input_students # the students variable will equal the return value of input_students so input_students needs a return value not just a "puts"
print_header
print(students)
print_footer(students)
cohort_groups(students)
