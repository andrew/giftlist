class List < ActiveRecord::Base
  belongs_to :user
  has_many :gifts

  validates_presence_of :title

  accepts_nested_attributes_for :gifts

  def to_s
    title
  end
end
