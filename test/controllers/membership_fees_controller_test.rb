require 'test_helper'

class MembershipFeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membership_fee = membership_fees(:one)
  end

  test "should get index" do
    get membership_fees_url
    assert_response :success
  end

  test "should get new" do
    get new_membership_fee_url
    assert_response :success
  end

  test "should create membership_fee" do
    assert_difference('MembershipFee.count') do
      post membership_fees_url, params: { membership_fee: { membership_fees_status: @membership_fee.membership_fees_status } }
    end

    assert_redirected_to membership_fee_url(MembershipFee.last)
  end

  test "should show membership_fee" do
    get membership_fee_url(@membership_fee)
    assert_response :success
  end

  test "should get edit" do
    get edit_membership_fee_url(@membership_fee)
    assert_response :success
  end

  test "should update membership_fee" do
    patch membership_fee_url(@membership_fee), params: { membership_fee: { membership_fees_status: @membership_fee.membership_fees_status } }
    assert_redirected_to membership_fee_url(@membership_fee)
  end

  test "should destroy membership_fee" do
    assert_difference('MembershipFee.count', -1) do
      delete membership_fee_url(@membership_fee)
    end

    assert_redirected_to membership_fees_url
  end
end
