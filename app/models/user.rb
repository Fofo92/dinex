class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :title, :first_name, :last_name, presence: true
  validates_uniqueness_of :email, scope: [:first_name, :last_name]
  has_one_attached :photo
  belongs_to :body

  TITLES = ['M.', 'Mme', 'Melle', 'Dr', 'Pr']
end
