require 'rails_helper'

RSpec.describe "practices/edit", type: :view do
  before(:each) do
    @practice = assign(:practice, Practice.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit practice form" do
    render

    assert_select "form[action=?][method=?]", practice_path(@practice), "post" do

      assert_select "input[name=?]", "practice[name]"
    end
  end
end
