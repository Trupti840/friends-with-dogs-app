class Owner < ApplicationRecord
	has_many :dogs

	#validation example of presence
	validates :first_name, :last_name ,:occupation, presence: true

	#validate uniquness example
	validates :last_name, uniqueness: true

	#limit validation example
	validates :first_name, :last_name , length: { minimun: 2, maximum: 10}

	#validates the string type wheather having special chater or not
	#format validation example
	validates :first_name ,:last_name, format: { with:/\A[a-zA-Z]+\z/, message:'only character please'}

	#customs validations which are customized using method 
	#example of customized validation
		#defining method for customized validation
	validate :validate_owner_age

	#implementing customize validation

	def validate_owner_age
		if  self.age.present?
		  		puts "got his age ...huryyy!!!!"

			if age < 25
				errors.add(:age,'please enter the proper age. Owner should be more than 25 year old')
			end
		end
	end

	def to_s
    "#{first_name} #{last_name}"
  end

  after_save :display_owner_age

  def display_owner_age
  	if  self.age.present?
  		puts "got his age ...huryyy!!!!"
  	else
  		puts "not mentioned aged ^^/"
  	end
  		
  end
  	
end
