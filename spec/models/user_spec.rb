require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when create user' do
    it 'change count' do
      expect { create(:user) }.to change(User, :count)
    end

    it { is_expected.to validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
end
