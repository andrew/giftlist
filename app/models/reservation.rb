class Reservation < ActiveRecord::Base
  belongs_to :gift
  validates_presence_of :gift_id, :name, :email
  validates_uniqueness_of :gift_id
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  delegate :list, :to => :gift

  def to_s
    name
  end
end
