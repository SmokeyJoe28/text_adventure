require 'test_helper'

class MovesControllerTest < ActionController::TestCase
  setup do
    @move = moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create move" do
    assert_difference('Move.count') do
      post :create, move: { destination_id: @move.destination_id, direction: @move.direction, room_id: @move.room_id }
    end

    assert_redirected_to move_path(assigns(:move))
  end

  test "should show move" do
    get :show, id: @move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @move
    assert_response :success
  end

  test "should update move" do
    patch :update, id: @move, move: { destination_id: @move.destination_id, direction: @move.direction, room_id: @move.room_id }
    assert_redirected_to move_path(assigns(:move))
  end

  test "should destroy move" do
    assert_difference('Move.count', -1) do
      delete :destroy, id: @move
    end

    assert_redirected_to moves_path
  end
end
