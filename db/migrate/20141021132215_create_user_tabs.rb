class CreateUserTabs < ActiveRecord::Migration
  def change
    create_table :user_tabs do |t|

      t.timestamps
    end
  end
end
