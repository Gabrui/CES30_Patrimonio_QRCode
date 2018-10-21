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

ActiveRecord::Schema.define(version: 2018_10_14_133346) do

  create_table "items", force: :cascade do |t|
    t.string "qr_code"
    t.string "descricao"
    t.string "estado"
    t.integer "silom_id"
    t.integer "usuario_id"
    t.integer "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_items_on_local_id"
    t.index ["silom_id"], name: "index_items_on_silom_id"
    t.index ["usuario_id"], name: "index_items_on_usuario_id"
  end

  create_table "locals", force: :cascade do |t|
    t.string "nome"
    t.string "sala"
    t.string "predio"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "silom_antigos", force: :cascade do |t|
    t.string "dependencia"
    t.string "conta"
    t.string "classe"
    t.integer "bmp"
    t.string "nomeclatura"
    t.string "serie"
    t.string "pn"
    t.string "sispat"
    t.string "fcg"
    t.string "etiqueta"
    t.integer "qtd"
    t.decimal "valor_atualizado"
    t.decimal "valor_depreciado"
    t.decimal "valor_liquido"
    t.string "situacao"
    t.datetime "data_modificacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "siloms", force: :cascade do |t|
    t.string "dependencia"
    t.string "conta"
    t.string "classe"
    t.integer "bmp"
    t.string "nomeclatura"
    t.string "serie"
    t.string "pn"
    t.string "sispat"
    t.string "fcg"
    t.string "etiqueta"
    t.integer "qtd"
    t.decimal "valor_atualizado"
    t.decimal "valor_depreciado"
    t.decimal "valor_liquido"
    t.string "situacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
