class AddTablesToUserTables < ActiveRecord::Migration
  def change
    add_reference :user_tables, :table, index: true
  end
end
