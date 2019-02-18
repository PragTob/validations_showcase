require 'rails_helper'

RSpec.describe "practices/index", type: :view do
  before(:each) do
    assign(:practices, [
      Practice.create!(
        :name => "Name"
      ),
      Practice.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of practices" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
