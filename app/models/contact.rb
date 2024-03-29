# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :text, presence: true
  validates :agreement, acceptance: true
end
