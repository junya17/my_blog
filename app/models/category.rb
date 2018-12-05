# frozen_string_literal: true

class Category < ApplicationRecord
  validates :title, presence: true
  validates :memo, presence: true
  has_many :post
end
