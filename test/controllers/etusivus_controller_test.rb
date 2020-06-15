require 'test_helper'

class EtusivusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etusivu = etusivus(:one)
  end

  test "should get index" do
    get etusivus_url
    assert_response :success
  end

  test "should get new" do
    get new_etusivu_url
    assert_response :success
  end

  test "should create etusivu" do
    assert_difference('Etusivu.count') do
      post etusivus_url, params: { etusivu: {  } }
    end

    assert_redirected_to etusivu_url(Etusivu.last)
  end

  test "should show etusivu" do
    get etusivu_url(@etusivu)
    assert_response :success
  end

  test "should get edit" do
    get edit_etusivu_url(@etusivu)
    assert_response :success
  end

  test "should update etusivu" do
    patch etusivu_url(@etusivu), params: { etusivu: {  } }
    assert_redirected_to etusivu_url(@etusivu)
  end

  test "should destroy etusivu" do
    assert_difference('Etusivu.count', -1) do
      delete etusivu_url(@etusivu)
    end

    assert_redirected_to etusivus_url
  end
end
