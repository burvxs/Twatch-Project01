class User < ApplicationRecord
    has_many :comments, optional: true
    has_many :streams, optional: true
end
