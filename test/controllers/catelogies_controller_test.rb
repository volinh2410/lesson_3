require 'test_helper'

class CatelogiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catelogy = catelogies(:one)
  end

  test "should get index" do
    get catelogies_url
    assert_response :success
  end

  test "should get new" do
    get new_catelogy_url
    assert_response :success
  end

  test "should create catelogy" do
    assert_difference('Catelogy.count') do
      post catelogies_url, params: { catelogy: { micropost_id: @catelogy.micropost_id, name: @catelogy.name } }
    end

    assert_redirected_to catelogy_url(Catelogy.last)
  end

  test "should show catelogy" do
    get catelogy_url(@catelogy)
    assert_response :success
  end

  test "should get edit" do
    get edit_catelogy_url(@catelogy)
    assert_response :success
  end

  test "should update catelogy" do
    patch catelogy_url(@catelogy), params: { catelogy: { micropost_id: @catelogy.micropost_id, name: @catelogy.name } }
    assert_redirected_to catelogy_url(@catelogy)
  end

  test "should destroy catelogy" do
    assert_difference('Catelogy.count', -1) do
      delete catelogy_url(@catelogy)
    end

    assert_redirected_to catelogies_url
  end
end
