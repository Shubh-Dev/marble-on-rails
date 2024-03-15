# frozen_string_literal: true

# CreateMarbles class
class CreateMarbles < ActiveRecord::Migration[7.1]
  def change
    create_table :marbles do |t|
      t.string :name
      t.string :stone
      t.text :description

      t.timestamps
    end
  end
end
