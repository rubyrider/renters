class AddSmsAccountToAllUser < ActiveRecord::Migration[5.1]
  def change
    User.all.each do |user|
      user.create_sms_account
    end
  end
end
