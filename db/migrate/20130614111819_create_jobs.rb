class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :github_id
      t.datetime :created_at
      t.string :title
      t.string :location
      t.string :type
      t.string :description
      t.string :how_to_apply
      t.string :company
      t.string :company_url
      t.string :company_logo
      t.string :url

      t.references :user
      t.timestamps
    end
  end
end
