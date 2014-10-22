class TableTab < ActiveRecord::Base
  has_many :user_tabs
  has_many :users, through: :user_tabs
end
