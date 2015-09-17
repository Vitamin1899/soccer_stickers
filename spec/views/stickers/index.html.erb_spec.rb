require 'rails_helper'

RSpec.describe "stickers/index", type: :view do
  before(:each) do
    assign(:stickers, [
      Sticker.create!(
        :image => "Image"
      ),
      Sticker.create!(
        :image => "Image"
      )
    ])
  end

  it "renders a list of stickers" do
    render
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
