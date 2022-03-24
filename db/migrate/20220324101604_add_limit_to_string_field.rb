class AddLimitToStringField < ActiveRecord::Migration[6.1]
  def change
    change_column :questions, :question, :longtext
    change_column :questions, :answer, :longtext
  end
end
