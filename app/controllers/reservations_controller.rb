class ReservationsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :gift

    response_for :create do |format|
      format.html do
        flash[:notice] = "Thankyou for reserving the #{@reservation.gift}"
        Notifier.deliver_new_reservation(@reservation)
        redirect_to gifts_path
      end
    end
  end
end
