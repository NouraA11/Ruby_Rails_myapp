class Entry < ApplicationRecord
    belongs_to :category 
    validates :calories,     presence: true
    validates :proteins,     presence: true
    validates :carbohydrates,     presence: true
    validates :fats,     presence: true
    validates :meal_type,     presence: true
    validates :category_id,     presence: true
    # validate do |entry|
    #     errors.add :base, :too_long, message: "has too many numbers"
    # end
      
    def day
        self.created_at.strftime("%B %e, %Y")
    end
end
