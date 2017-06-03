class Recipe < ApplicationRecord
  DIFFICULTY=%w(Easy Medium Hard)
  belongs_to :food_type
end
