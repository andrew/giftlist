class ReservationsController < ApplicationController
  before_filter :require_user, :except => [:new, :create]

  make_resourceful do
    actions :all
    belongs_to :gift

    response_for :create do |format|
      format.html do
        flash[:notice] = "Thankyou for reserving the #{@reservation.gift}"
        Notifier.deliver_new_reservation(@reservation)
        redirect_to list_path(@gift.list, :iframe => params[:iframe])
      end
    end
  end
end
