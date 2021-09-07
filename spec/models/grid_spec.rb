# == Schema Information
#
# Table name: grids
#
#  id          :integer          not null, primary key
#  difficulty  :integer          default("medium")
#  nationality :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_grids_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Grid, type: :model do
  describe 'relationships' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'enums' do
    it { is_expected.to define_enum_for(:difficulty)
      .with_values(very_easy: 1, easy: 2, medium: 3, hard: 4, fiendish: 5) }
  end
  
  describe 'validations' do
    it { is_expected.to validate_presence_of(:difficulty) }
    it { is_expected.to validate_presence_of(:nationality) }
  end
end
