require 'rails_helper'

RSpec.describe "subjects/edit", type: :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :title => "MyString",
      :specification => "MyText"
    ))
  end

  it "renders the edit subject form" do
    render

    assert_select "form[action=?][method=?]", subject_path(@subject), "post" do

      assert_select "input[name=?]", "subject[title]"

      assert_select "textarea[name=?]", "subject[specification]"
    end
  end
end
