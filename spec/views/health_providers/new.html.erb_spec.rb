require 'rails_helper'

RSpec.describe "health_providers/new", type: :view do
  before(:each) do
    assign(:health_provider, HealthProvider.new(
      :facility_name => "MyString",
      :address => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :webpage => "MyString",
      :about_us => "MyText",
      :phone => "MyString"
    ))
  end

  it "renders new health_provider form" do
    render

    assert_select "form[action=?][method=?]", health_providers_path, "post" do

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
