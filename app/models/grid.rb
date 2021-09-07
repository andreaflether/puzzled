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
class Grid < ApplicationRecord
  belongs_to :user

  enum difficulty: {
    very_easy: 1,
    easy: 2,
    medium: 3,
    hard: 4,
    fiendish: 5
  }

  validates :difficulty, presence: true
  validates :nationality, presence: true
end
