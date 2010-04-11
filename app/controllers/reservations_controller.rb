class ReservationsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :gift

    response_for :create do |format|
      format.html do
        Notifier.deliver_new_reservation(@reservation)
        redirect_to gifts_path
      end
    end
  end
end
