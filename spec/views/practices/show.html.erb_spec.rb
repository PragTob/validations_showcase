require 'rails_helper'

RSpec.describe "practices/show", type: :view do
  before(:each) do
    @practice = assign(:practice, Practice.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
