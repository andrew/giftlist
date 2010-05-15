class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save do |result| # LINE A
      if result
        flash[:notice] = "Account registered!"
        redirect_to root_path
      else
        unless @user.oauth_token.nil?
          @user = User.find_by_oauth_token(@user.oauth_token)
          unless @user.nil?
            UserSession.create(@user)
            flash.now[:message] = "Welcome back!"
            redirect_to root_path
          else
            redirect_back_or_default root_path
          end
        else
          redirect_back_or_default root_path
        end
      end
    end
  end

  def show
    redirect_to root_path
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
end
