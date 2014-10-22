class AddTableTabsToTables < ActiveRecord::Migration
  def change
    add_reference :tables, :table_tabs, index: true
  end
end
