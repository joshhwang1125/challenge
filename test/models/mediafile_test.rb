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

require 'test_helper'

class MediafileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
