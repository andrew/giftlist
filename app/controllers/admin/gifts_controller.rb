class Admin::GiftsController < Admin::ApplicationController
  make_resourceful do
    actions :all
  end
end
