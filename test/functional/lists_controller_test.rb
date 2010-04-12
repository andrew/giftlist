require File.dirname(__FILE__) + '/../test_helper'
require 'lists_controller'

# Re-raise errors caught by the controller.
class ListsController; def rescue_action(e) raise e end; end

class ListsControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:lists)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_list
    old_count = List.count
    post :create, :list => { }
    assert_equal old_count + 1, List.count

    assert_redirected_to list_path(assigns(:list))
  end

  def test_should_show_list
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_list
    put :update, :id => 1, :list => { }
    assert_redirected_to list_path(assigns(:list))
  end

  def test_should_destroy_list
    old_count = List.count
    delete :destroy, :id => 1
    assert_equal old_count-1, List.count

    assert_redirected_to lists_path
  end
end
