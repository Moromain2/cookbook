class DropAsAttachementsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :active_storage_attachments
  end

  def down
    ActiveRecord::IrreversibleMigration
  end
end
