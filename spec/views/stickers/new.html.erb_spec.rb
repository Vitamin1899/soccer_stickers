require 'rails_helper'

RSpec.describe "stickers/new", type: :view do
  before(:each) do
    assign(:sticker, Sticker.new(
      :image => "MyString"
    ))
  end

  it "renders new sticker form" do
    render

    assert_select "form[action=?][method=?]", stickers_path, "post" do

      assert_select "input#sticker_image[name=?]", "sticker[image]"
    end
  end
end
