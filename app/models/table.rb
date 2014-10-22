class Table < ActiveRecord::Base
  has_many :table_tabs
  has_many :user_tabs
  has_many :users, through: :user_tabs
end
