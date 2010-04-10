require File.dirname(__FILE__) + '/../test_helper'
require 'gifts_controller'

# Re-raise errors caught by the controller.
class GiftsController; def rescue_action(e) raise e end; end

class GiftsControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:gifts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_gift
    old_count = Gift.count
    post :create, :gift => { }
    assert_equal old_count + 1, Gift.count

    assert_redirected_to gift_path(assigns(:gift))
  end

  def test_should_show_gift
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_gift
    put :update, :id => 1, :gift => { }
    assert_redirected_to gift_path(assigns(:gift))
  end

  def test_should_destroy_gift
    old_count = Gift.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Gift.count

    assert_redirected_to gifts_path
  end
end
