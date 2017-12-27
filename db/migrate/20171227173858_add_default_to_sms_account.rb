class AddDefaultToSmsAccount < ActiveRecord::Migration[5.1]
  def change
    change_column :sms_accounts, :amount, :integer, default: 20
  end
end
