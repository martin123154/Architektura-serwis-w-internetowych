require 'test_helper'

class SpektaklsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spektakl = spektakls(:one)
  end

  test "should get index" do
    get spektakls_url
    assert_response :success
  end

  test "should get new" do
    get new_spektakl_url
    assert_response :success
  end

  test "should create spektakl" do
    assert_difference('Spektakl.count') do
      post spektakls_url, params: { spektakl: { premiera: @spektakl.premiera, rezyser: @spektakl.rezyser, tytul: @spektakl.tytul } }
    end

    assert_redirected_to spektakl_path(Spektakl.last)
  end

  test "should show spektakl" do
    get spektakl_url(@spektakl)
    assert_response :success
  end

  test "should get edit" do
    get edit_spektakl_url(@spektakl)
    assert_response :success
  end

  test "should update spektakl" do
    patch spektakl_url(@spektakl), params: { spektakl: { premiera: @spektakl.premiera, rezyser: @spektakl.rezyser, tytul: @spektakl.tytul } }
    assert_redirected_to spektakl_path(@spektakl)
  end

  test "should destroy spektakl" do
    assert_difference('Spektakl.count', -1) do
      delete spektakl_url(@spektakl)
    end

    assert_redirected_to spektakls_path
  end
end
