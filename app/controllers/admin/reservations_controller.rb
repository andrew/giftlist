class Admin::ReservationsController < Admin::ApplicationController
  make_resourceful do
    actions :all
    belongs_to :gift
  end
end
