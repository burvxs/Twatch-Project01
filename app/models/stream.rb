class Stream < ApplicationRecord
    belongs_to :user
    has_many :comments, optional: true
end
