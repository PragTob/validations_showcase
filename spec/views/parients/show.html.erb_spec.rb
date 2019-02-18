require 'rails_helper'

RSpec.describe "parients/show", type: :view do
  before(:each) do
    @parient = assign(:parient, Parient.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
