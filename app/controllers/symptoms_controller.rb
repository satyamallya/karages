class SymptomsController < ApplicationController
  # GET /symptoms
  # GET /symptoms.xml
  def index
    @symptoms = Symptom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @symptoms }
    end
  end

  # GET /symptoms/1
  # GET /symptoms/1.xml
  def show
    @symptom = Symptom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @symptom }
    end
  end

  # GET /symptoms/new
  # GET /symptoms/new.xml
  def new
    @symptom = Symptom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @symptom }
    end
  end

  # GET /symptoms/1/edit
  def edit
    @symptom = Symptom.find(params[:id])
  end

  # POST /symptoms
  # POST /symptoms.xml
  def create
    @symptom = Symptom.new(params[:symptom])

    respond_to do |format|
      if @symptom.save
        format.html { redirect_to(@symptom, :notice => 'Symptom was successfully created.') }
        format.xml  { render :xml => @symptom, :status => :created, :location => @symptom }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @symptom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /symptoms/1
  # PUT /symptoms/1.xml
  def update
    @symptom = Symptom.find(params[:id])

    respond_to do |format|
      if @symptom.update_attributes(params[:symptom])
        format.html { redirect_to(@symptom, :notice => 'Symptom was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @symptom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /symptoms/1
  # DELETE /symptoms/1.xml
  def destroy
    @symptom = Symptom.find(params[:id])
    @symptom.destroy

    respond_to do |format|
      format.html { redirect_to(symptoms_url) }
      format.xml  { head :ok }
    end
  end
end
