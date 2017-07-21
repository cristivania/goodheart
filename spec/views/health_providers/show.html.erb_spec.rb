require 'rails_helper'

RSpec.describe "health_providers/show", type: :view do
  before(:each) do
    @health_provider = assign(:health_provider, HealthProvider.create!(
      :facility_name => "Facility Name",
      :address => "Address",
      :email => "Email",
      :password_digest => "Password Digest",
      :webpage => "Webpage",
      :about_us => "MyText",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Facility Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Webpage/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Phone/)
  end
end
