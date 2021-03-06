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

ActiveRecord::Schema.define(version: 20140916003028) do

  create_table "aprendices", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "identificacion"
    t.string   "ficha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "centro_id"
    t.integer  "programa_id"
  end

  add_index "aprendices", ["centro_id"], name: "index_aprendices_on_centro_id"
  add_index "aprendices", ["programa_id"], name: "index_aprendices_on_programa_id"

  create_table "asistentes", force: true do |t|
    t.string   "aprendiz"
    t.string   "funcionario"
    t.string   "instructor"
    t.string   "empleado"
    t.string   "otro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "nomcar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centros", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "confeccion", force: true do |t|
    t.integer  "ficha_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "confeccion", ["ficha_id"], name: "index_confeccion_on_ficha_id"
  add_index "confeccion", ["programa_id"], name: "index_confeccion_on_programa_id"

  create_table "cueros", force: true do |t|
    t.integer  "ficha_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cueros", ["ficha_id"], name: "index_cueros_on_ficha_id"
  add_index "cueros", ["programa_id"], name: "index_cueros_on_programa_id"

  create_table "empleados", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "identificacion"
    t.integer  "cargo_id"
    t.string   "mail"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empleados", ["cargo_id"], name: "index_empleados_on_cargo_id"

  create_table "funcionarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "identificacion"
    t.integer  "centro_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["centro_id"], name: "index_funcionarios_on_centro_id"
  add_index "funcionarios", ["programa_id"], name: "index_funcionarios_on_programa_id"

  create_table "instructores", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "identificacion"
    t.integer  "centro_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instructores", ["centro_id"], name: "index_instructores_on_centro_id"
  add_index "instructores", ["programa_id"], name: "index_instructores_on_programa_id"

  create_table "mobiliarios", force: true do |t|
    t.integer  "ficha_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mobiliarios", ["ficha_id"], name: "index_mobiliarios_on_ficha_id"
  add_index "mobiliarios", ["programa_id"], name: "index_mobiliarios_on_programa_id"

  create_table "programas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
