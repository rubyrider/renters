class CreateSmsAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :sms_accounts do |t|
      t.integer :amount, default: 0
      t.references :user
      t.string :state
      t.monetize :payment

      t.timestamps
    end
  end
end
