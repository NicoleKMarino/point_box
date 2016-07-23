require 'bcrypt'


class User < ActiveRecord::Base
  has_and_belongs_to_many :rewards
  has_many :points
  validates :username, presence: true,
                     uniqueness: true
  has_secure_password

enum role: %w(default admin)


# 
# def is_admin?
#   self.user_role == 1
# end

end
