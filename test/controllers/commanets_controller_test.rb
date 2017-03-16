require 'test_helper'

class CommanetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commanet = commanets(:one)
  end

  test "should get index" do
    get commanets_url
    assert_response :success
  end

  test "should get new" do
    get new_commanet_url
    assert_response :success
  end

  test "should create commanet" do
    assert_difference('Commanet.count') do
      post commanets_url, params: { commanet: { body: @commanet.body, post_id: @commanet.post_id } }
    end

    assert_redirected_to commanet_url(Commanet.last)
  end

  test "should show commanet" do
    get commanet_url(@commanet)
    assert_response :success
  end

  test "should get edit" do
    get edit_commanet_url(@commanet)
    assert_response :success
  end

  test "should update commanet" do
    patch commanet_url(@commanet), params: { commanet: { body: @commanet.body, post_id: @commanet.post_id } }
    assert_redirected_to commanet_url(@commanet)
  end

  test "should destroy commanet" do
    assert_difference('Commanet.count', -1) do
      delete commanet_url(@commanet)
    end

    assert_redirected_to commanets_url
  end
end
