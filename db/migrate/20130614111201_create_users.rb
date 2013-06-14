class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :github
      t.string :photo
      t.string :email
      t.string :encrypted_password
      t.string :confirmation_token
      t.string :password_hash
      t.string :password_salt

      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email
      t.datetime :remember_created_at
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps
    end
  end
end
