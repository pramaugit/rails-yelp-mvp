class Restaurant < ApplicationRecord
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}
  validates :address, :name, :phone_number, :category, presence: true

end
