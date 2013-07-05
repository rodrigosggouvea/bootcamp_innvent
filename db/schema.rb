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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130705170612) do

  create_table "colaboradores", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "cargo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colaboradores_projetos", :force => true do |t|
    t.integer  "colaborador_id"
    t.integer  "projeto_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "projetos", :force => true do |t|
    t.string   "nome"
    t.date     "data_entrega"
    t.string   "responsavel"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.date     "data_inicio"
  end

  create_table "tarefas", :force => true do |t|
    t.text     "descricao"
    t.date     "data_finalizacao"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "projeto_id"
    t.integer  "colaborador_id"
  end

end
