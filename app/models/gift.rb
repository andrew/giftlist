class Gift < ActiveRecord::Base
  has_one :reservation
  validates_presence_of :title

  def reserved?
    reservation.present?
  end

  def to_s
    title
  end
end
