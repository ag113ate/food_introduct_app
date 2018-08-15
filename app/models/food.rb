class Food < ActiveRecord::Base
  validates :menu, :description, {presence: true}
  validates :menu, {uniqueness: true}
end
