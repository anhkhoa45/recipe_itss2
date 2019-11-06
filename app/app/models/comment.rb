class Comment < ApplicationRecord
    belongs_to :recipe
    belongs_to :user 
    has_many :replies
end
