class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = ["admin", "editor"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def display_name
    self.email.split("@").first
  end

  has_many :memberships
  has_many :groups,:through=>:memberships
  has_many :registrations
  has_one :profile
  accepts_nested_attributes_for :profile
end
