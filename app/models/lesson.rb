class Lesson < ApplicationRecord
  mount_uploader :image, ImageUploader
  REGISTRABLE_ATTRIBUTES = %i(
  name
    event_date(1i) event_date(2i) event_date(3i)
    close_date(1i) close_date(2i) close_date(3i)
    )
    
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reservation_users, through: :reservations, source: :user
  
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 250 }
  validates :event_date, presence: true
  validates :close_date, presence: true
  
  
  def self.search(search) #検索用
    if search
      Lesson.where(['address LIKE ?', "%#{search}%"]) #検索とaddressの部分一致を表示。
    else
      Lesson.all #全て表示。
    end
  end
end
