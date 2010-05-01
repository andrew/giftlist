class GiftsController < ApplicationController
  before_filter :require_user

  make_resourceful do
    actions :all
    belongs_to :list

    response_for :create do |format|
      format.html do
        redirect_to parent_object
      end
    end
  end
end
