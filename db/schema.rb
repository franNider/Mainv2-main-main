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

ActiveRecord::Schema[7.1].define(version: 2023_11_03_010726) do
  create_table "checks", force: :cascade do |t|
    t.string "perro"
    t.string "descripcion"
    t.integer "dia"
    t.integer "año"
    t.integer "mes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "nombre"
    t.string "raza"
    t.string "sexo"
    t.string "color"
    t.string "vacunas"
    t.string "chequeos"
    t.float "peso"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.integer "dni"
    t.string "password"
    t.integer "user_id", null: false
    t.integer "perro_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perro_id"], name: "index_profiles_on_perro_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "turnos", force: :cascade do |t|
    t.string "estado"
    t.string "nombre"
    t.string "apellido"
    t.string "motivo"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.integer "dni", null: false
    t.string "password_digest", null: false
    t.string "nombre"
    t.string "apellido"
    t.string "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dni"], name: "index_users_on_dni", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "perro"
    t.string "vacuna"
    t.integer "dia"
    t.integer "año"
    t.integer "mes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "profiles", "perros"
  add_foreign_key "profiles", "users"
end
