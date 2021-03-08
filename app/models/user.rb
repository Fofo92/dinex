class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :title, :first_name, :last_name, presence: true
  validates_uniqueness_of :email, scope: %i[first_name, last_name]
  has_one_attached :photo

  TITLES = ['M.', 'Mme', 'Melle', 'Dr', 'Pr']
end
