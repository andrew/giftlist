class ReservationsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :gift

    response_for :create do |format|
      format.html { redirect_to gifts_path }
    end
  end
end
