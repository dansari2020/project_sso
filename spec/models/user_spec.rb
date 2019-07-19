require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { is_expected.to have_many :access_grants }
    it { is_expected.to have_many :access_tokens }
    it { is_expected.to have_many :oauth_applications }
    it { is_expected.to have_many :projects }
  end
end
