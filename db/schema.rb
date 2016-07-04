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

ActiveRecord::Schema.define(version: 20160703040503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradors", force: :cascade do |t|
    t.text     "usuario"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.text     "nombre"
    t.text     "apellido"
    t.integer  "rut"
    t.text     "email"
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eleccions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extras", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "precio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "precio"
    t.integer  "cliente_id"
  end

  add_index "facturas", ["cliente_id"], name: "index_facturas_on_cliente_id", using: :btree

  create_table "ingredientes", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "precio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "masas", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "precio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "estado"
  end

  create_table "promocions", force: :cascade do |t|
    t.integer  "numero"
    t.text     "detalle"
    t.integer  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tamanos", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "precio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.text     "descripcion"
    t.text     "tamano"
    t.integer  "precio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "facturas", "clientes"
end
