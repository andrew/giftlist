class Gift < ActiveRecord::Base
  belongs_to :list
  has_many :reservations
  validates_presence_of :title

  def reserved?
    reservations.any?
  end

  def reservation
    reservations.first
  end

  def to_s
    title
  end
end
