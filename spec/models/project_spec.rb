require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to :user }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :user }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :url }
  end
end
