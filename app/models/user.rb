class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :user_tables
  has_many :tables, through: :user_tables

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
