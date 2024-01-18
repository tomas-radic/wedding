require 'rails_helper'

RSpec.describe Invitation, type: :model do
  it 'Has valid factory' do
    expect(create(:invitation).id).not_to be_blank
  end
end
