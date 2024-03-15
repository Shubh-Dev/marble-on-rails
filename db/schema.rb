# frozen_string_literal: true
# rubocop:disable all

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_240_311_090_225) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'marbles', force: :cascade do |t|
    t.string 'name'
    t.string 'stone'
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.string 'sku'
    t.string 'size'
    t.string 'stripe_id'
    t.string 'stripe_price_id'
    t.string 'stripe_subscription_id'
    t.decimal 'original_price'
    t.decimal 'price'
    t.integer 'category_id'
    t.integer 'supplier_id'
    t.integer 'manage_stock', default: 0
    t.integer 'stock'
    t.integer 'marble_id'
    t.string 'description'
    t.string 'specification'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category_id'], name: 'index_products_on_category_id'
    t.index ['marble_id'], name: 'index_products_on_marble_id'
    t.index ['supplier_id'], name: 'index_products_on_supplier_id'
  end

  create_table 'suppliers', force: :cascade do |t|
    t.string 'name'
    t.string 'company_name'
    t.string 'email'
    t.string 'website'
    t.string 'address_line1'
    t.string 'address_line2'
    t.string 'country'
    t.integer 'postal'
    t.text 'notes'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['confirmation_token'], name: 'index_users_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'products', 'categories'
  add_foreign_key 'products', 'marbles'
  add_foreign_key 'products', 'suppliers'
end
