class GoogleMccAccountsController < ApplicationController
  # GET /google_mcc_accounts
  # GET /google_mcc_accounts.json
  def index
    @google_mcc_accounts = GoogleMccAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @google_mcc_accounts }
    end
  end

  # GET /google_mcc_accounts/1
  # GET /google_mcc_accounts/1.json
  def show
    @google_mcc_account = GoogleMccAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @google_mcc_account }
    end
  end

  # GET /google_mcc_accounts/new
  # GET /google_mcc_accounts/new.json
  def new
    @google_mcc_account = GoogleMccAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @google_mcc_account }
    end
  end

  # GET /google_mcc_accounts/1/edit
  def edit
    @google_mcc_account = GoogleMccAccount.find(params[:id])
  end

  # POST /google_mcc_accounts
  # POST /google_mcc_accounts.json
  def create
    @google_mcc_account = GoogleMccAccount.new(params[:google_mcc_account])

    respond_to do |format|
      if @google_mcc_account.save
        format.html { redirect_to @google_mcc_account, notice: 'Google mcc account was successfully created.' }
        format.json { render json: @google_mcc_account, status: :created, location: @google_mcc_account }
      else
        format.html { render action: "new" }
        format.json { render json: @google_mcc_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /google_mcc_accounts/1
  # PUT /google_mcc_accounts/1.json
  def update
    @google_mcc_account = GoogleMccAccount.find(params[:id])

    respond_to do |format|
      if @google_mcc_account.update_attributes(params[:google_mcc_account])
        format.html { redirect_to @google_mcc_account, notice: 'Google mcc account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @google_mcc_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_mcc_accounts/1
  # DELETE /google_mcc_accounts/1.json
  def destroy
    @google_mcc_account = GoogleMccAccount.find(params[:id])
    @google_mcc_account.destroy

    respond_to do |format|
      format.html { redirect_to google_mcc_accounts_url }
      format.json { head :no_content }
    end
  end
end
