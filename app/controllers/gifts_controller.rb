class GiftsController < ApplicationController
  before_filter :require_user

  make_resourceful do
    actions :all
    belongs_to :list

    response_for :create, :update do |format|
      format.html do
        redirect_to current_object.list
      end
    end
  end
end
