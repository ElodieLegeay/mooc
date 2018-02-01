class Lesson < ApplicationRecord
belongs_to :course

  validates :title, presence: true,
                    length: { maximum: 255 },
                    unique: true

  validates :body, presence: true

  validates :lesson_id, presence: true,
                        only_integer: true
end

end
