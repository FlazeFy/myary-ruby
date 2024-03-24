class Diary < ApplicationRecord
    validates :diary_title, presence: true, length: { maximum: 75 }
    validates :diary_desc, presence: true
    validates :diary_date, presence: true
    validates :diary_mood, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
    validates :diary_tired, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
