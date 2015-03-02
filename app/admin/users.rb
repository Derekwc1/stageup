ActiveAdmin.register User, :as => "User" do

  menu :priority => 4
  config.batch_actions = true

  filter :email
  filter :created_at

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :created_at
    actions
  end


  sidebar "User Details", :only => :show do
    attributes_table_for user, :first_name, :last_name, :email, :created_at
  end



end