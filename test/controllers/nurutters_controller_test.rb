require 'test_helper'

class NuruttersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nurutter = nurutters(:one)
  end

  test "should get index" do
    get nurutters_url
    assert_response :success
  end

  test "should get new" do
    get new_nurutter_url
    assert_response :success
  end

  test "should create nurutter" do
    assert_difference('Nurutter.count') do
      post nurutters_url, params: { nurutter: { content: @nurutter.content } }
    end

    assert_redirected_to nurutter_url(Nurutter.last)
  end

  test "should show nurutter" do
    get nurutter_url(@nurutter)
    assert_response :success
  end

  test "should get edit" do
    get edit_nurutter_url(@nurutter)
    assert_response :success
  end

  test "should update nurutter" do
    patch nurutter_url(@nurutter), params: { nurutter: { content: @nurutter.content } }
    assert_redirected_to nurutter_url(@nurutter)
  end

  test "should destroy nurutter" do
    assert_difference('Nurutter.count', -1) do
      delete nurutter_url(@nurutter)
    end

    assert_redirected_to nurutters_url
  end
end
