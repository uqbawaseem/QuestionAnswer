class ChangeLimitOfQuestion < ActiveRecord::Migration[6.1]
  def change
    change_column :questions, :question, :text
  end
end
