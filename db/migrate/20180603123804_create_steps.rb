class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.text :step_description
      t.text :step_notes

      t.timestamps
    end
  end
end
