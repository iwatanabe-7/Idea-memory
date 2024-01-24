require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Registration' do
    it "name, mail, password, password_confirmation registration" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end
