require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :auteur => "Auteur",
        :content => "Content"
      ),
      Comment.create!(
        :auteur => "Auteur",
        :content => "Content"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => "Auteur".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
