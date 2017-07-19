require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner = owners(:one)
  end

  test "should get index" do
    get owners_url
    assert_response :success
  end

  test "should get new" do
    get new_owner_url
    assert_response :success
  end

  test "should create owner" do
    assert_difference('Owner.count') do
      post owners_url, params: { owner: { location_bought: @owner.location_bought, location_sold: @owner.location_sold, person_id: @owner.person_id, piece_id: @owner.piece_id, price_bought: @owner.price_bought, price_sold: @owner.price_sold, year_bought: @owner.year_bought, year_sold: @owner.year_sold } }
    end

    assert_redirected_to owner_url(Owner.last)
  end

  test "should show owner" do
    get owner_url(@owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_owner_url(@owner)
    assert_response :success
  end

  test "should update owner" do
    patch owner_url(@owner), params: { owner: { location_bought: @owner.location_bought, location_sold: @owner.location_sold, person_id: @owner.person_id, piece_id: @owner.piece_id, price_bought: @owner.price_bought, price_sold: @owner.price_sold, year_bought: @owner.year_bought, year_sold: @owner.year_sold } }
    assert_redirected_to owner_url(@owner)
  end

  test "should destroy owner" do
    assert_difference('Owner.count', -1) do
      delete owner_url(@owner)
    end

    assert_redirected_to owners_url
  end
end
