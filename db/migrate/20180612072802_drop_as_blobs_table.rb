class DropAsBlobsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :active_storage_blobs
  end

  def down
    ActiveRecord::IrreversibleMigration
  end
end
