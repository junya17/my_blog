# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :name
      t.integer :post_id

      t.timestamps
    end
  end
end
