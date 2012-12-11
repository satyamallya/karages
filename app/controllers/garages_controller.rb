class GaragesController < ApplicationController
  # GET /garages
  # GET /garages.xml
  def index
    @garages = Garage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @garages }
    end
  end

  # GET /garages/1
  # GET /garages/1.xml
  def show
    @garage = Garage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @garage }
    end
  end

  # GET /garages/new
  # GET /garages/new.xml
  def new
    @garage = Garage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @garage }
    end
  end

  # GET /garages/1/edit
  def edit
    @garage = Garage.find(params[:id])
  end

  # POST /garages
  # POST /garages.xml
  def create
    @garage = Garage.new(params[:garage])

    respond_to do |format|
      if @garage.save
        format.html { redirect_to(@garage, :notice => 'Garage was successfully created.') }
        format.xml  { render :xml => @garage, :status => :created, :location => @garage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @garage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /garages/1
  # PUT /garages/1.xml
  def update
    @garage = Garage.find(params[:id])

    respond_to do |format|
      if @garage.update_attributes(params[:garage])
        format.html { redirect_to(@garage, :notice => 'Garage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @garage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /garages/1
  # DELETE /garages/1.xml
  def destroy
    @garage = Garage.find(params[:id])
    @garage.destroy

    respond_to do |format|
      format.html { redirect_to(garages_url) }
      format.xml  { head :ok }
    end
  end
end
