class Table < ActiveRecord::Base
  has_many :table_tabs
  has_many :user_tables
  has_many :users, through: :user_tables
end
