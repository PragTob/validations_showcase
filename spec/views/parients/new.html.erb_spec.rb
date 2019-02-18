require 'rails_helper'

RSpec.describe "parients/new", type: :view do
  before(:each) do
    assign(:parient, Parient.new(
      :name => "MyString"
    ))
  end

  it "renders new parient form" do
    render

    assert_select "form[action=?][method=?]", parients_path, "post" do

      assert_select "input[name=?]", "parient[name]"
    end
  end
end
