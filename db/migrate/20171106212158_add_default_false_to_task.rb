class AddDefaultFalseToTask < ActiveRecord::Migration[5.1]
  def change
    change_column_default :tasks, :done, from: true, to: false
  end
end
