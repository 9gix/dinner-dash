class User < ActiveRecord::Base
  has_many :orders
  validates :email, uniqueness: true
  validates :full_name, presence: true
  validates :display_name, length: {minimum: 2, maximium: 32}
end
