class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :user_tabs
  has_many :table_tabs, through: :user_tabs

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
