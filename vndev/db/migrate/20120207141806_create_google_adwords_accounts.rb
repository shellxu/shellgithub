class CreateGoogleAdwordsAccounts < ActiveRecord::Migration
  def change
    create_table :google_adwords_accounts do |t|
      t.string :client_id
      t.integer :add_to_portal_report
      t.integer :submit_to_tsavo
      t.string :adwords_account_id
      t.integer :fetch_report_from_google
      t.references :google_mcc_account
      t.references :site 
      t.timestamps
    end
  end
end
