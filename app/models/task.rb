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
#  priority   :integer
#

class Task < ApplicationRecord
require 'faker'


PRIORITIES = {
  0 => "Basse",
  1 => "Moyenne",
  2 => "Elevee"
}

end
