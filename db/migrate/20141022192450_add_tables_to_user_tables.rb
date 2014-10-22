class AddTablesToUserTables < ActiveRecord::Migration
  def change
    add_reference :user_tables, :tables, index: true
  end
end
