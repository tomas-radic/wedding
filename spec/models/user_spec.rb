require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Has valid factory' do
    expect(create(:user).id).not_to be_blank
  end
end
