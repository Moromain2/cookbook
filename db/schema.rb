ActiveRecord::Schema.define(version: 20180603123924) do

  enable_extension "plpgsql"

  create_table "bakings", force: :cascade do |t|
    t.boolean "no_baking"
    t.string "baking_type"
    t.integer "heat"
    t.string "unit"
    t.integer "duration"
    t.text "baking_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "ingredient_name"
    t.integer "quantity"
    t.string "measuring"
    t.string "other"
    t.boolean "optional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "recipe_name"
    t.text "recipe_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.text "step_description"
    t.text "step_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
