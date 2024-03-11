# frozen_string_literal: true
# rubocop:disable all

# CreateSuppliers class
class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.string :website
      t.string :address_line1
      t.string :address_line2
      t.string :country
      t.integer :postal
      t.text :notes

      t.timestamps
    end
  end
end
