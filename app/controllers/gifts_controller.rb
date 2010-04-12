class GiftsController < ApplicationController
  before_filter :require_user

  make_resourceful do
    actions :all
    belongs_to :list
  end
end
