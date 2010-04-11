class Gift < ActiveRecord::Base
  has_many :reservations
  validates_presence_of :title

  def reserved?
    reservations.any?
  end

  def to_s
    title
  end
end
