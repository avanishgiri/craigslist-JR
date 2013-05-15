class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts

  validates :name, :uniqueness => true
end
