class CreateGoogleMccAccounts < ActiveRecord::Migration
  def change
    create_table :google_mcc_accounts do |t|
      t.string :email
      t.string :password
      t.string :user_agent
      t.string :application_token
      t.string :developer_token

      t.timestamps
    end
  end
end
