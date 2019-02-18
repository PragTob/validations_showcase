require 'rails_helper'

RSpec.describe "parients/index", type: :view do
  before(:each) do
    assign(:parients, [
      Parient.create!(
        :name => "Name"
      ),
      Parient.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of parients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
