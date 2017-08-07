require 'rails_helper'

RSpec.describe "admin/categories/index", type: :view do
  before(:each) do
    assign(:admin_categories, [
      Admin::Categorie.create!(
        :name => "Name"
      ),
      Admin::Categorie.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
