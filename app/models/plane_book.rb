class PlaneBook < ApplicationRecord
  belongs_to :flight
  belongs_to :user
  validates :pass_name, presence: true
  validates :pass_email, presence: true

  def pass_user_flight(user, f_id)
    PlaneBook.find_by_sql("SELECT * FROM plane_books WHERE user_id = #{user.id} AND flight_id = #{f_id}")
  end
end
