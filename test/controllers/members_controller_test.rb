require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { age: @member.age, birthdate: @member.birthdate, cell_phone: @member.cell_phone, city: @member.city, county_id: @member.county_id, email: @member.email, first_name: @member.first_name, gender_id: @member.gender_id, home_phone: @member.home_phone, last_name_string: @member.last_name_string, member_no: @member.member_no, member_since: @member.member_since, membership_ends: @member.membership_ends, membership_fee_id: @member.membership_fee_id, middle_initial: @member.middle_initial, notes: @member.notes, plan_id: @member.plan_id, postal_code: @member.postal_code, role_id: @member.role_id, send_card: @member.send_card, state_id: @member.state_id, status_id: @member.status_id, street_address: @member.street_address, title: @member.title } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { age: @member.age, birthdate: @member.birthdate, cell_phone: @member.cell_phone, city: @member.city, county_id: @member.county_id, email: @member.email, first_name: @member.first_name, gender_id: @member.gender_id, home_phone: @member.home_phone, last_name_string: @member.last_name_string, member_no: @member.member_no, member_since: @member.member_since, membership_ends: @member.membership_ends, membership_fee_id: @member.membership_fee_id, middle_initial: @member.middle_initial, notes: @member.notes, plan_id: @member.plan_id, postal_code: @member.postal_code, role_id: @member.role_id, send_card: @member.send_card, state_id: @member.state_id, status_id: @member.status_id, street_address: @member.street_address, title: @member.title } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
