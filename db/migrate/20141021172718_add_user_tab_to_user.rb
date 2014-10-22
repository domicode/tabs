class AddUserTabToUser < ActiveRecord::Migration
  def change
    add_reference :user_tabs, :user, index: true
    add_reference :user_tabs, :table_tab, index: true
  end
end
