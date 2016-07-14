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

ActiveRecord::Schema.define(version: 20160712181143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

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
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "masa_id"
    t.integer  "ingrediente_id"
    t.integer  "tamano_id"
  end

  add_index "eleccions", ["ingrediente_id"], name: "index_eleccions_on_ingrediente_id", using: :btree
  add_index "eleccions", ["masa_id"], name: "index_eleccions_on_masa_id", using: :btree
  add_index "eleccions", ["tamano_id"], name: "index_eleccions_on_tamano_id", using: :btree

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
    t.integer  "pedido_id"
  end

  add_index "facturas", ["cliente_id"], name: "index_facturas_on_cliente_id", using: :btree
  add_index "facturas", ["pedido_id"], name: "index_facturas_on_pedido_id", using: :btree

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
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "estado"
    t.integer  "eleccion_id"
    t.integer  "tipo_id"
    t.integer  "promocion_id"
    t.integer  "extra_id"
  end

  add_index "pedidos", ["eleccion_id"], name: "index_pedidos_on_eleccion_id", using: :btree
  add_index "pedidos", ["extra_id"], name: "index_pedidos_on_extra_id", using: :btree
  add_index "pedidos", ["promocion_id"], name: "index_pedidos_on_promocion_id", using: :btree
  add_index "pedidos", ["tipo_id"], name: "index_pedidos_on_tipo_id", using: :btree

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

  create_table "tests", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "tests", ["email"], name: "index_tests_on_email", unique: true, using: :btree
  add_index "tests", ["reset_password_token"], name: "index_tests_on_reset_password_token", unique: true, using: :btree

  create_table "tipos", force: :cascade do |t|
    t.text     "descripcion"
    t.text     "tamano"
    t.integer  "precio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "eleccions", "ingredientes"
  add_foreign_key "eleccions", "masas"
  add_foreign_key "eleccions", "tamanos"
  add_foreign_key "facturas", "clientes"
  add_foreign_key "facturas", "pedidos"
  add_foreign_key "pedidos", "eleccions"
  add_foreign_key "pedidos", "extras"
  add_foreign_key "pedidos", "promocions"
  add_foreign_key "pedidos", "tipos"
end
