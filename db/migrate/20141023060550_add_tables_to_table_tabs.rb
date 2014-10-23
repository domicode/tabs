class AddTablesToTableTabs < ActiveRecord::Migration
  def change
    add_reference :table_tabs, :table, index: true
  end
end
