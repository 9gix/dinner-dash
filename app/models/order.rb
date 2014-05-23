class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  belongs_to :user
  has_many :items, through: :order_items

  validates_inclusion_of :status, in: Choices['status']
  validates_presence_of :user_id
end
