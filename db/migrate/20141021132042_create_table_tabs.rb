class CreateTableTabs < ActiveRecord::Migration
  def change
    create_table :table_tabs do |t|
      t.string :location
      t.datetime :date
      t.string :paid_by

      t.timestamps
    end
  end
end
