require 'test_helper'

class VideogamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videogames_index_url
    assert_response :success
  end

  test "should get show" do
    get videogames_show_url
    assert_response :success
  end

  test "should get new" do
    get videogames_new_url
    assert_response :success
  end

  test "should get create" do
    get videogames_create_url
    assert_response :success
  end

  test "should get destroy" do
    get videogames_destroy_url
    assert_response :success
  end

end
