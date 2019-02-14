class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true 
  validates :nickname, presence: true
  #validates :telephone, presence: true, uniqueness: true, format: {with: /\A\d{10}$|^\d{11}\z/}
  validates :introduction, length: { maximum: 250 }
  validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/}
  
  mount_uploader :icon, ImageUploader
  
  has_many :lessons
  has_many :reservations, dependent: :destroy
  has_many :reservation_lessons, through: :reservations, source: :lesson
  
end
