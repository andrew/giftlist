class ListsController < ApplicationController
  before_filter :require_user, :except => :show

  make_resourceful do
    actions :all

    before :new do
      3.times { current_object.gifts.build }
    end
  end
end
