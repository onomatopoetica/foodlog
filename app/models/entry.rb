class Entry < ApplicationRecord
  validates :calories, presence: true
  
  validates :proteins, presence: true
  
  validates :carbohydrates, presence: true
  
  validates :fats, presence: true
  
  validates :meal_type, presence: true 

  def day
    self.created_at.strftime("%b %e, %Y")
  end
end
