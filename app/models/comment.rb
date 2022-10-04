class Comment < ApplicationRecord
	#polymorphic association syntax...
  belongs_to :commentable, polymorphic: true

end