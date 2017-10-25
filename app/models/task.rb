# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  done       :boolean
#

class Task < ApplicationRecord
require 'faker'
end
