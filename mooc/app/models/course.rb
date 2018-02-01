class Course < ApplicationRecord

has_many :lessons, dependent: :destroy

  validates :title, presence: true,
length: { maximum: 140 },
                    uniqueness: {:message => "Title already exists."}

  validates :description, presence: true

end
