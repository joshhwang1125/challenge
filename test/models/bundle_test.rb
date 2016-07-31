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

require 'test_helper'

class BundleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
