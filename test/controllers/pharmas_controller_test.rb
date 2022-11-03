require "test_helper"

class PharmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharma = pharmas(:one)
  end

  test "should get index" do
    get pharmas_url, as: :json
    assert_response :success
  end

  test "should create pharma" do
    assert_difference("Pharma.count") do
      post pharmas_url, params: { pharma: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show pharma" do
    get pharma_url(@pharma), as: :json
    assert_response :success
  end

  test "should update pharma" do
    patch pharma_url(@pharma), params: { pharma: {  } }, as: :json
    assert_response :success
  end

  test "should destroy pharma" do
    assert_difference("Pharma.count", -1) do
      delete pharma_url(@pharma), as: :json
    end

    assert_response :no_content
  end
end
