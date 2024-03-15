# frozen_string_literal: true
# rubocop:disable all

# CreateProducts class
class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :size
      t.string :stripe_id
      t.string :stripe_price_id
      t.string :stripe_subscription_id
      t.decimal :original_price
      t.decimal :price
      t.integer :category_id, index: true, null: true
      t.integer :supplier_id, index: true, null: true
      t.integer :manage_stock, default: 0
      t.integer :stock
      t.integer :marble_id, index: true, null: true
      t.string :description, null: true
      t.string :specification, null: true

      t.timestamps
    end
    add_foreign_key :products, :categories, column: :category_id
    add_foreign_key :products, :suppliers, column: :supplier_id
    add_foreign_key :products, :marbles, column: :marble_id
  end
end
