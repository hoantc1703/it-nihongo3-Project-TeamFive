require "application_system_test_case"

class RoomManagersTest < ApplicationSystemTestCase
  setup do
    @room_manager = room_managers(:one)
  end

  test "visiting the index" do
    visit room_managers_url
    assert_selector "h1", text: "Room Managers"
  end

  test "creating a Room manager" do
    visit room_managers_url
    click_on "New Room Manager"

    fill_in "Address", with: @room_manager.address
    fill_in "Email", with: @room_manager.email
    fill_in "First name", with: @room_manager.first_name
    fill_in "Last name", with: @room_manager.last_name
    fill_in "Phone", with: @room_manager.phone
    click_on "Create Room manager"

    assert_text "Room manager was successfully created"
    click_on "Back"
  end

  test "updating a Room manager" do
    visit room_managers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @room_manager.address
    fill_in "Email", with: @room_manager.email
    fill_in "First name", with: @room_manager.first_name
    fill_in "Last name", with: @room_manager.last_name
    fill_in "Phone", with: @room_manager.phone
    click_on "Update Room manager"

    assert_text "Room manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Room manager" do
    visit room_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room manager was successfully destroyed"
  end
end
