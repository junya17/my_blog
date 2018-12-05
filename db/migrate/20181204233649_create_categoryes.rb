# frozen_string_literal: true

class CreateCategoryes < ActiveRecord::Migration[5.2]
  def change
    create_table :categoryes do |t|
      t.string :title
      t.text :memo

      t.timestamps
    end
  end
end
