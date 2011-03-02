class AlphasignupsController < ApplicationController
  # GET /alphasignups
  # GET /alphasignups.xml
  def index
    @alphasignups = Alphasignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alphasignups }
    end
  end

  # GET /alphasignups/1
  # GET /alphasignups/1.xml
  def show
    @alphasignup = Alphasignup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alphasignup }
    end
  end

  # GET /alphasignups/new
  # GET /alphasignups/new.xml
  def new
    @alphasignup = Alphasignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alphasignup }
    end
  end

  # GET /alphasignups/1/edit
  def edit
    @alphasignup = Alphasignup.find(params[:id])
  end

  # POST /alphasignups
  # POST /alphasignups.xml
  def create
    @alphasignup = Alphasignup.new(params[:alphasignup])

    respond_to do |format|
      if @alphasignup.save
        format.html { redirect_to(@alphasignup, :notice => 'Thank you for signing up.') }
        format.xml  { render :xml => @alphasignup, :status => :created, :location => @alphasignup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alphasignup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alphasignups/1
  # PUT /alphasignups/1.xml
  def update
    @alphasignup = Alphasignup.find(params[:id])

    respond_to do |format|
      if @alphasignup.update_attributes(params[:alphasignup])
        format.html { redirect_to(@alphasignup, :notice => 'Alphasignup was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alphasignup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alphasignups/1
  # DELETE /alphasignups/1.xml
  def destroy
    @alphasignup = Alphasignup.find(params[:id])
    @alphasignup.destroy

    respond_to do |format|
      format.html { redirect_to(alphasignups_url) }
      format.xml  { head :ok }
    end
  end
end
