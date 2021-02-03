require 'test_helper'

class BingosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bingo = bingos(:one)
  end

  test "should get index" do
    get bingos_url
    assert_response :success
  end

  test "should get new" do
    get new_bingo_url
    assert_response :success
  end

  test "should create bingo" do
    assert_difference('Bingo.count') do
      post bingos_url, params: { bingo: {  } }
    end

    assert_redirected_to bingo_url(Bingo.last)
  end

  test "should show bingo" do
    get bingo_url(@bingo)
    assert_response :success
  end

  test "should get edit" do
    get edit_bingo_url(@bingo)
    assert_response :success
  end

  test "should update bingo" do
    patch bingo_url(@bingo), params: { bingo: {  } }
    assert_redirected_to bingo_url(@bingo)
  end

  test "should destroy bingo" do
    assert_difference('Bingo.count', -1) do
      delete bingo_url(@bingo)
    end

    assert_redirected_to bingos_url
  end
end
