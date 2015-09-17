require 'rails_helper'

RSpec.describe "stickers/edit", type: :view do
  before(:each) do
    @sticker = assign(:sticker, Sticker.create!(
      :image => "MyString"
    ))
  end

  it "renders the edit sticker form" do
    render

    assert_select "form[action=?][method=?]", sticker_path(@sticker), "post" do

      assert_select "input#sticker_image[name=?]", "sticker[image]"
    end
  end
end
