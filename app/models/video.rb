class Video < ApplicationRecord
    belongs_to :course
    has_many :video_categories
    has_many :categories, through: :video_categories
end
