class AccountsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def new
    @account = Account.new
    @account.build_owner
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to root_path, notice: 'Signed up successfully'
    else
      render action: 'new', status: :unprocessable_entity
    end
  end

  private

  def account_params
    params.require(:account).permit(:subdomain, owner_attributes: %i[name email password password_confirmation role])
  end
end
