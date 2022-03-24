ActiveAdmin.register Technology do
  filter :questions, :collection => proc {(Question.all).map{|c| [c.question, c.id]}}
  menu priority: 1
  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
  index do
    #selectable_column
    column :name
    actions
  end
  filter :name
  permit_params :name
  show do
    attributes_table do
      row :name
    end
  end
end
