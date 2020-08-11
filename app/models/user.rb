class User < ApplicationRecord
    has_many :comments 
    has_many :streams

    has_secure_password
    validates_uniqueness_of :handle
    validates_uniqueness_of :email
    
    def self.handle_exists?(handle)
        User.exists? :handle => handle
    end
    def self.email_exists?(email)
        User.exists? :email => email
    end
end
