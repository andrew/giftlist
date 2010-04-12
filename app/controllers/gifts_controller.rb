class GiftsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :list
  end
end
