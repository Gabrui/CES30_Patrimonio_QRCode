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

ActiveRecord::Schema.define(version: 2018_11_12_232801) do

  create_table "categorias", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressoes", force: :cascade do |t|
    t.integer "usuario_id"
    t.datetime "dia"
    t.integer "item_id"
    t.string "gerado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_impressoes_on_item_id"
    t.index ["usuario_id"], name: "index_impressoes_on_usuario_id"
  end

  create_table "itens", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "estado_id"
    t.integer "silom_id"
    t.integer "usuario_id"
    t.integer "local_id"
    t.integer "categoria_id"
    t.datetime "catalogacao"
    t.datetime "exclusao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_itens_on_categoria_id"
    t.index ["estado_id"], name: "index_itens_on_estado_id"
    t.index ["local_id"], name: "index_itens_on_local_id"
    t.index ["silom_id"], name: "index_itens_on_silom_id"
    t.index ["usuario_id"], name: "index_itens_on_usuario_id"
  end

  create_table "leituras", force: :cascade do |t|
    t.integer "usuario_id"
    t.datetime "dia"
    t.string "lido"
    t.integer "local_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_leituras_on_item_id"
    t.index ["local_id"], name: "index_leituras_on_local_id"
    t.index ["usuario_id"], name: "index_leituras_on_usuario_id"
  end

  create_table "locais", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
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
    t.integer "bmp", default: 0, null: false
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
    t.index ["bmp"], name: "index_siloms_on_bmp", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome", default: "", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["nome"], name: "index_usuarios_on_nome", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
