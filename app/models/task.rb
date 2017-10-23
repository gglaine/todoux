class Task < ApplicationRecord
  def initialize(name)
    @name = name
  end

  validates :name, :uniqueness, :true

end
