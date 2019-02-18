require 'rails_helper'

RSpec.describe "parients/edit", type: :view do
  before(:each) do
    @parient = assign(:parient, Parient.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit parient form" do
    render

    assert_select "form[action=?][method=?]", parient_path(@parient), "post" do

      assert_select "input[name=?]", "parient[name]"
    end
  end
end
