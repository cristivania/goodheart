require 'rails_helper'

RSpec.describe "health_providers/index", type: :view do
  before(:each) do
    assign(:health_providers, [
      HealthProvider.create!(
        :facility_name => "Facility Name",
        :address => "Address",
        :email => "Email",
        :password_digest => "Password Digest",
        :webpage => "Webpage",
        :about_us => "MyText",
        :phone => "Phone"
      ),
      HealthProvider.create!(
        :facility_name => "Facility Name",
        :address => "Address",
        :email => "Email",
        :password_digest => "Password Digest",
        :webpage => "Webpage",
        :about_us => "MyText",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of health_providers" do
    render
    assert_select "tr>td", :text => "Facility Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Webpage".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
