class RepairshopsController < ApplicationController
  # GET /repairshops
  # GET /repairshops.xml
  def index
    @repairshops = Repairshop.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repairshops }
    end
  end

  # GET /repairshops/1
  # GET /repairshops/1.xml
  def show
    @repairshop = Repairshop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repairshop }
    end
  end

  # GET /repairshops/new
  # GET /repairshops/new.xml
  def new
    @repairshop = Repairshop.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repairshop }
    end
  end

  # GET /repairshops/1/edit
  def edit
    @repairshop = Repairshop.find(params[:id])
  end

  # POST /repairshops
  # POST /repairshops.xml
  def create
    @repairshop = Repairshop.new(params[:repairshop])

    respond_to do |format|
      if @repairshop.save
        format.html { redirect_to(@repairshop, :notice => 'Repairshop was successfully created.') }
        format.xml  { render :xml => @repairshop, :status => :created, :location => @repairshop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repairshop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repairshops/1
  # PUT /repairshops/1.xml
  def update
    @repairshop = Repairshop.find(params[:id])

    respond_to do |format|
      if @repairshop.update_attributes(params[:repairshop])
        format.html { redirect_to(@repairshop, :notice => 'Repairshop was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repairshop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /repairshops/1
  # DELETE /repairshops/1.xml
  def destroy
    @repairshop = Repairshop.find(params[:id])
    @repairshop.destroy

    respond_to do |format|
      format.html { redirect_to(repairshops_url) }
      format.xml  { head :ok }
    end
  end
end
