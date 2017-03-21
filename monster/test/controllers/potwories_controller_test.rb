require 'test_helper'

class PotworiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potwory = potwories(:one)
  end

  test "should get index" do
    get potwories_url
    assert_response :success
  end

  test "should get new" do
    get new_potwory_url
    assert_response :success
  end

  test "should create potwory" do
    assert_difference('Potwory.count') do
      post potwories_url, params: { potwory: { nazwa: @potwory.nazwa, opis: @potwory.opis, wiek: @potwory.wiek, wrazliwosc: @potwory.wrazliwosc } }
    end

    assert_redirected_to potwory_url(Potwory.last)
  end

  test "should show potwory" do
    get potwory_url(@potwory)
    assert_response :success
  end

  test "should get edit" do
    get edit_potwory_url(@potwory)
    assert_response :success
  end

  test "should update potwory" do
    patch potwory_url(@potwory), params: { potwory: { nazwa: @potwory.nazwa, opis: @potwory.opis, wiek: @potwory.wiek, wrazliwosc: @potwory.wrazliwosc } }
    assert_redirected_to potwory_url(@potwory)
  end

  test "should destroy potwory" do
    assert_difference('Potwory.count', -1) do
      delete potwory_url(@potwory)
    end

    assert_redirected_to potwories_url
  end
end
