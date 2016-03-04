require 'test_helper'

class LemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lemon = lemons(:one)
  end

  test "should get index" do
    get lemons_url
    assert_response :success
  end

  test "should get new" do
    get new_lemon_url
    assert_response :success
  end

  test "should create lemon" do
    assert_difference('Lemon.count') do
      post lemons_url, params: { lemon: { description: @lemon.description, name: @lemon.name } }
    end

    assert_redirected_to lemon_path(Lemon.last)
  end

  test "should show lemon" do
    get lemon_url(@lemon)
    assert_response :success
  end

  test "should get edit" do
    get edit_lemon_url(@lemon)
    assert_response :success
  end

  test "should update lemon" do
    patch lemon_url(@lemon), params: { lemon: { description: @lemon.description, name: @lemon.name } }
    assert_redirected_to lemon_path(@lemon)
  end

  test "should destroy lemon" do
    assert_difference('Lemon.count', -1) do
      delete lemon_url(@lemon)
    end

    assert_redirected_to lemons_path
  end
end
