# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  grid_id    :integer          not null
#
# Indexes
#
#  index_groups_on_grid_id  (grid_id)
#
# Foreign Keys
#
#  grid_id  (grid_id => grids.id)
#
class Group < ApplicationRecord
  belongs_to :grid

  acts_as_taggable_on :links
end
