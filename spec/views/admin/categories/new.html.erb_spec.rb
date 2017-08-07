require 'rails_helper'

RSpec.describe "admin/categories/new", type: :view do
  before(:each) do
    assign(:admin_categorie, Admin::Categorie.new(
      :name => "MyString"
    ))
  end

  it "renders new admin_categorie form" do
    render

    assert_select "form[action=?][method=?]", admin_categories_path, "post" do

      assert_select "input#admin_categorie_name[name=?]", "admin_categorie[name]"
    end
  end
end
