class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :role, presence: true

  def super_admin?
    role == 'super_admin'
  end

  def admin?
    role == 'admin'
  end

  def staff?
    role == 'admin'
  end

  def client?
    role == 'admin'
  end

end
