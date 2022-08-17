class Restaurant < ApplicationRecord
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
validates :name,:address, presence: true
has_many :reviews, dependent: :destroy

end
