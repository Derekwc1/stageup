class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :pitch
      t.string :position
      t.integer :equity
      t.string :stage

      t.timestamps
    end
  end
end
