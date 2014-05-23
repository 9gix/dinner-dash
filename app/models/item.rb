class Item < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :order_items
  has_many :orders, :through => :order_items

  validates :title, :description, :price, :presence => true
  validates :title, :uniqueness => true
  validates :price, numericality: {greater_than: 0}
end
