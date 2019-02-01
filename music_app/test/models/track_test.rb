# == Schema Information
#
# Table name: tracks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  ord        :integer          not null
#  lyrics     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_bonus?  :boolean
#  album_id   :integer
#

require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
