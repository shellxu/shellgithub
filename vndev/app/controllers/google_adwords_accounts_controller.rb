class GoogleAdwordsAccountsController < ApplicationController
  # GET /google_adwords_accounts
  # GET /google_adwords_accounts.json
  def index
    @google_adwords_accounts = GoogleAdwordsAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @google_adwords_accounts }
    end
  end

  # GET /google_adwords_accounts/1
  # GET /google_adwords_accounts/1.json
  def show
    @google_adwords_account = GoogleAdwordsAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @google_adwords_account }
    end
  end

  # GET /google_adwords_accounts/new
  # GET /google_adwords_accounts/new.json
  def new
    @google_adwords_account = GoogleAdwordsAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @google_adwords_account }
    end
  end

  # GET /google_adwords_accounts/1/edit
  def edit
    @google_adwords_account = GoogleAdwordsAccount.find(params[:id])
  end

  # POST /google_adwords_accounts
  # POST /google_adwords_accounts.json
  def create
    @google_adwords_account = GoogleAdwordsAccount.new(params[:google_adwords_account])

    respond_to do |format|
      if @google_adwords_account.save
        format.html { redirect_to @google_adwords_account, notice: 'Google adwords account was successfully created.' }
        format.json { render json: @google_adwords_account, status: :created, location: @google_adwords_account }
      else
        format.html { render action: "new" }
        format.json { render json: @google_adwords_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /google_adwords_accounts/1
  # PUT /google_adwords_accounts/1.json
  def update
    @google_adwords_account = GoogleAdwordsAccount.find(params[:id])

    respond_to do |format|
      if @google_adwords_account.update_attributes(params[:google_adwords_account])
        format.html { redirect_to @google_adwords_account, notice: 'Google adwords account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @google_adwords_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_adwords_accounts/1
  # DELETE /google_adwords_accounts/1.json
  def destroy
    @google_adwords_account = GoogleAdwordsAccount.find(params[:id])
    @google_adwords_account.destroy

    respond_to do |format|
      format.html { redirect_to google_adwords_accounts_url }
      format.json { head :no_content }
    end
  end
end
