require 'rails_helper'

RSpec.describe "stickers/show", type: :view do
  before(:each) do
    @sticker = assign(:sticker, Sticker.create!(
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Image/)
  end
end
