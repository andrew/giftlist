class ListsController < ApplicationController
  before_filter :require_user, :except => :iframe

  make_resourceful do
    actions :all
    member_actions :iframe

    before :new do
      3.times { current_object.gifts.build }
    end
  end

  def current_model
    current_user.lists
  end
end
