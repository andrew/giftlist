class ListsController < ApplicationController
  before_filter :require_user, :except => :iframe

  make_resourceful do
    actions :all

    before :new do
      3.times { current_object.gifts.build }
    end
  end

  def iframe
    @list = List.find(params[:id])
  end

  def current_model
    current_user.lists
  end
end
