class New < ApplicationRecord
	has_many :comments, as: :commentable

end
