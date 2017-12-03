# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  done       :boolean          default(FALSE)
#  user_id    :integer
#  deadline   :date
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
