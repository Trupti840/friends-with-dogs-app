class Demo < ApplicationRecord
	has_one :sub_demo

	#active record callbacks example
	#define method
	before_create :greeting_message
	#implement method
	def greeting_message
		puts "heyy! i will run before you create an object"
	end
	#for single line callbacks you can use this syntax
	#before_create do
	# => puts "heyy! i will run first"
	#end

	#after create callback example
	

end
