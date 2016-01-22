# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160122033649) do

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.string   "card_type"
    t.string   "set"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "x"
    t.integer  "y"
    t.string   "color"
    t.string   "connections"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "decks", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "name"
    t.string   "draw"
    t.string   "discard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "current_player_id"
    t.integer  "current_action"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "city_id"
    t.integer  "role_id"
    t.string   "cards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viri", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "city_id"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
