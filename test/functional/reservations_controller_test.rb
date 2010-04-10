require File.dirname(__FILE__) + '/../test_helper'
require 'reservations_controller'

# Re-raise errors caught by the controller.
class ReservationsController; def rescue_action(e) raise e end; end

class ReservationsControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:reservations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_reservation
    old_count = Reservation.count
    post :create, :reservation => { }
    assert_equal old_count + 1, Reservation.count

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  def test_should_show_reservation
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_reservation
    put :update, :id => 1, :reservation => { }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  def test_should_destroy_reservation
    old_count = Reservation.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Reservation.count

    assert_redirected_to reservations_path
  end
end
