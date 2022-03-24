class ToAddStatusToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :status, :boolean, default: false
  end
end
