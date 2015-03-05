class AddPitchToStartups < ActiveRecord::Migration
  def change
  	add_column :startups, :startuppitch, :string
  	add_column :startups, :startupurl, :string
  	add_column :startups, :startuptwiturl, :string
  	add_column :startups, :corole, :string
  	add_column :startups, :duration, :string


  end
end
