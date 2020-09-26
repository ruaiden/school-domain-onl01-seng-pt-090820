#require 'pry'
class School
  attr_accessor :name, :roster
  
 
  
  def initialize (name)
    @name=name
    @roster= {}
  end
  
  def add_student(student_name,grade)
    #check if key exists. If we know our key we dont have to look at every number
   if roster[grade]
     @roster[grade] << student_name
   else 
    @roster[grade] = []
    @roster[grade] << student_name
  end 
  end
  
  def grade(grade_level)
    @roster[grade_level]    
  end
  
  def sort 
    sorted_hash = {}
    roster.each do |grade,students|
      sorted_hash[grade]= students.sort
  end 
  sorted_hash
  end 
  
end 

school = School.new("Bayside High School")