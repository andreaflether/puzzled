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
require 'rails_helper'

RSpec.describe Group, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
