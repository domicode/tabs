class ChangeUserTabsToUserTables < ActiveRecord::Migration
  def change
    rename_table('user_tabs', 'user_tables')
  end
end
