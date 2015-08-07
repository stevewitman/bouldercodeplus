class Activity < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  # validate :due_date_in_past, :on => :create
  # has_many :comments, dependent: :destroy
  # def due_date_in_past
  #   if due_date.present? && due_date < Date.today
  #     errors.add(:due_date, "can't be in the past")
  #   end
  # end

end
