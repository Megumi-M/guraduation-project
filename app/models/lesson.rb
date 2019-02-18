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
  validates :capacity, presence: true
  validates :address, presence: true
  
  def self.search(keyword)
  if keyword && keyword != ""
      words = keyword.to_s.split(" ")
      columns = ["title", "content", "address"]
      query = []
      result = []
 
      columns.each do |column|
        query << ["#{column} LIKE ?"]
      end
 
      words.each_with_index do |w, index|
        if index == 0
          result[index] = Lesson.where([query.join(" OR "), "%#{w}%",  "%#{w}%", "%#{w}%"])
        else
          result[index] = result[index-1].where([query.join(" OR "), "%#{w}%",  "%#{w}%", "%#{w}%"])
        end
      end
      
      return result[words.length-1]
  else
      Lesson.all
  end
  end
end