class List < ActiveRecord::Base
  belongs_to :user
  has_many :gifts

  accepts_nested_attributes_for :gifts
end
