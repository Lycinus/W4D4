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

class Track < ApplicationRecord
    validates :title, :ord, :is_bonus?, :album_id, presence: true

    belongs_to :album,
        primary_key: :id,
        foreign_key: :album_id,
        class_name: :Album
end
