require 'rails_helper'

RSpec.describe "health_providers/edit", type: :view do
  before(:each) do
    @health_provider = assign(:health_provider, HealthProvider.create!(
      :facility_name => "MyString",
      :address => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :webpage => "MyString",
      :about_us => "MyText",
      :phone => "MyString"
    ))
  end

  it "renders the edit health_provider form" do
    render

    assert_select "form[action=?][method=?]", health_provider_path(@health_provider), "post" do

      assert_select "input[name=?]", "health_provider[facility_name]"

      assert_select "input[name=?]", "health_provider[address]"

      assert_select "input[name=?]", "health_provider[email]"

      assert_select "input[name=?]", "health_provider[password_digest]"

      assert_select "input[name=?]", "health_provider[webpage]"

      assert_select "textarea[name=?]", "health_provider[about_us]"

      assert_select "input[name=?]", "health_provider[phone]"
    end
  end
end
