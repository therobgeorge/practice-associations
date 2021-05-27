class Meeting < ApplicationRecord
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers

  validates :title, :agenda, :location, :time, presence: true
  # validates :future_date, 

  # def future_date
  #   if time < Time.now
  #    erros.add(:time, "must be future date")
  #   end

  # end

end
