# == Schema Information
#
# Table name: mediafiles
#
#  id         :integer          not null, primary key
#  bundle_id  :integer
#  title      :string
#  media_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mediafile < ActiveRecord::Base
  validates :bundle_id, presence: true

  belongs_to :bundle
end
