class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :github_id
      t.string :title
      t.string :company
      t.string :company_logo
      t.boolean :applied
      t.datetime :interview_date
      
      t.references :user
      t.timestamps
    end
  end
end
