require "test_helper"

class GamersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gamer = gamers(:one)
  end

  test "should get index" do
    get gamers_url
    assert_response :success
  end

  test "should get new" do
    get new_gamer_url
    assert_response :success
  end

  test "should create gamer" do
    assert_difference("Gamer.count") do
      post gamers_url, params: { gamer: { birth_date: @gamer.birth_date, email: @gamer.email, first_name: @gamer.first_name, gender: @gamer.gender, instagram: @gamer.instagram, phone_number: @gamer.phone_number, second_name: @gamer.second_name } }
    end

    assert_redirected_to gamer_url(Gamer.last)
  end

  test "should show gamer" do
    get gamer_url(@gamer)
    assert_response :success
  end

  test "should get edit" do
    get edit_gamer_url(@gamer)
    assert_response :success
  end

  test "should update gamer" do
    patch gamer_url(@gamer), params: { gamer: { birth_date: @gamer.birth_date, email: @gamer.email, first_name: @gamer.first_name, gender: @gamer.gender, instagram: @gamer.instagram, phone_number: @gamer.phone_number, second_name: @gamer.second_name } }
    assert_redirected_to gamer_url(@gamer)
  end

  test "should destroy gamer" do
    assert_difference("Gamer.count", -1) do
      delete gamer_url(@gamer)
    end

    assert_redirected_to gamers_url
  end
end
