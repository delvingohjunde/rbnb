require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  setup do
    @flat = flats(:one)
  end

  test "visiting the index" do
    visit flats_url
    assert_selector "h1", text: "Flats"
  end

  test "should create flat" do
    visit flats_url
    click_on "New flat"

    check "Aircon" if @flat.aircon
    fill_in "Bathrooms", with: @flat.bathrooms
    fill_in "Bedrooms", with: @flat.bedrooms
    fill_in "Check in", with: @flat.check_in
    fill_in "Check out", with: @flat.check_out
    fill_in "Description", with: @flat.description
    fill_in "Guests", with: @flat.guests
    fill_in "Latitude", with: @flat.latitude
    fill_in "Location", with: @flat.location
    fill_in "Longitude", with: @flat.longitude
    fill_in "Price per night", with: @flat.price_per_night
    fill_in "Rating", with: @flat.rating
    fill_in "Title", with: @flat.title
    fill_in "User", with: @flat.user_id
    check "Wifi" if @flat.wifi
    click_on "Create Flat"

    assert_text "Flat was successfully created"
    click_on "Back"
  end

  test "should update Flat" do
    visit flat_url(@flat)
    click_on "Edit this flat", match: :first

    check "Aircon" if @flat.aircon
    fill_in "Bathrooms", with: @flat.bathrooms
    fill_in "Bedrooms", with: @flat.bedrooms
    fill_in "Check in", with: @flat.check_in
    fill_in "Check out", with: @flat.check_out
    fill_in "Description", with: @flat.description
    fill_in "Guests", with: @flat.guests
    fill_in "Latitude", with: @flat.latitude
    fill_in "Location", with: @flat.location
    fill_in "Longitude", with: @flat.longitude
    fill_in "Price per night", with: @flat.price_per_night
    fill_in "Rating", with: @flat.rating
    fill_in "Title", with: @flat.title
    fill_in "User", with: @flat.user_id
    check "Wifi" if @flat.wifi
    click_on "Update Flat"

    assert_text "Flat was successfully updated"
    click_on "Back"
  end

  test "should destroy Flat" do
    visit flat_url(@flat)
    click_on "Destroy this flat", match: :first

    assert_text "Flat was successfully destroyed"
  end
end
