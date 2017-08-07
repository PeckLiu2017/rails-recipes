require 'rails_helper'

RSpec.describe "admin/categories/edit", type: :view do
  before(:each) do
    @admin_categorie = assign(:admin_categorie, Admin::Categorie.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit admin_categorie form" do
    render

    assert_select "form[action=?][method=?]", admin_categorie_path(@admin_categorie), "post" do

      assert_select "input#admin_categorie_name[name=?]", "admin_categorie[name]"
    end
  end
end
