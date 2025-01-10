require 'rails_helper'

RSpec.describe 'お店一覧', type: :system do
  before { create(:shop, name: 'hoge') }

  it 'お店が表示されること' do
    visit root_path

    expect(page).to have_content 'hoge'
  end
end
