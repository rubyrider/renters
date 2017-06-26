module Dashboard
  class SmsAccountsController < ApplicationController
    before_action :set_dashboard_sms_account, only: [:show, :edit, :update, :destroy]

    # GET /dashboard/sms_accounts/1
    # GET /dashboard/sms_accounts/1.json
    def show
    end

    private

    def set_dashboard_sms_account
      @sms_account = current_user.sms_account
    end
  end
end
