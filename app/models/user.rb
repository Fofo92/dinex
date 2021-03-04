class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :title, :first_name, :last_name, presence: true

  TITLES = ['M.', 'Mme', 'Melle', 'Dr', 'Pr']
end
