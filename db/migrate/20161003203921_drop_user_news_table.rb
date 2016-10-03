class DropUserNewsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :user_news
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
