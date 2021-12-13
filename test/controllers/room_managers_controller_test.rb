require 'test_helper'

class RoomManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_manager = room_managers(:one)
  end

  test "should get index" do
    get room_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_room_manager_url
    assert_response :success
  end

  test "should create room_manager" do
    assert_difference('RoomManager.count') do
      post room_managers_url, params: { room_manager: { address: @room_manager.address, email: @room_manager.email, first_name: @room_manager.first_name, last_name: @room_manager.last_name, phone: @room_manager.phone } }
    end

    assert_redirected_to room_manager_url(RoomManager.last)
  end

  test "should show room_manager" do
    get room_manager_url(@room_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_manager_url(@room_manager)
    assert_response :success
  end

  test "should update room_manager" do
    patch room_manager_url(@room_manager), params: { room_manager: { address: @room_manager.address, email: @room_manager.email, first_name: @room_manager.first_name, last_name: @room_manager.last_name, phone: @room_manager.phone } }
    assert_redirected_to room_manager_url(@room_manager)
  end

  test "should destroy room_manager" do
    assert_difference('RoomManager.count', -1) do
      delete room_manager_url(@room_manager)
    end

    assert_redirected_to room_managers_url
  end
end
