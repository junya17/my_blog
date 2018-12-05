# frozen_string_literal: true

class Post < ApplicationRecord
  validates :content, presence: true
  validates :title, presence: true
  has_one_attached :image
  has_many :comment
end
