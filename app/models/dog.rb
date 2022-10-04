class Dog < ApplicationRecord
  belongs_to :owner
  #call back example 
  #after call back
  after_create :display_dog_age

  def display_dog_age
  	if  self.age.present?
  		puts "got his age ...huryyy!!!!"
  	else
  		puts "not mentioned aged ^^/"
  	end
  		
  end
  	
  
end
