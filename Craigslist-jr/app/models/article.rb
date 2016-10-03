class Article < ApplicationRecord
  belongs_to :category

  validates :title, :key, :content, :category_id, presence: true
end
