# == Schema Information
#
# Table name: bundles
#
#  id             :integer          not null, primary key
#  title          :string           not null
#  artist         :string           not null
#  description    :text
#  background_url :string
#  thumbnail_url  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Bundle < ActiveRecord::Base
  validates :title, presence: true

  has_many :taggings
  has_many :tags, through: :taggings
  has_many :mediafiles, dependent: :destroy
end
