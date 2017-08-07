require 'rails_helper'

RSpec.describe "admin/categories/show", type: :view do
  before(:each) do
    @admin_categorie = assign(:admin_categorie, Admin::Categorie.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
