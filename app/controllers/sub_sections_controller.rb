class SubSectionsController < ApplicationController
  # GET /sub_sections
  # GET /sub_sections.xml
  def index
    @sub_sections = SubSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sub_sections }
    end
  end

  # GET /sub_sections/1
  # GET /sub_sections/1.xml
  def show
    @sub_section = SubSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub_section }
    end
  end

  # GET /sub_sections/new
  # GET /sub_sections/new.xml
  def new
    @sub_section = SubSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub_section }
    end
  end

  # GET /sub_sections/1/edit
  def edit
    @sub_section = SubSection.find(params[:id])
  end

  # POST /sub_sections
  # POST /sub_sections.xml
  def create
    @sub_section = SubSection.new(params[:sub_section])

    respond_to do |format|
      if @sub_section.save
        format.html { redirect_to(@sub_section, :notice => 'Sub section was successfully created.') }
        format.xml  { render :xml => @sub_section, :status => :created, :location => @sub_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_sections/1
  # PUT /sub_sections/1.xml
  def update
    @sub_section = SubSection.find(params[:id])

    respond_to do |format|
      if @sub_section.update_attributes(params[:sub_section])
        format.html { redirect_to(@sub_section, :notice => 'Sub section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_sections/1
  # DELETE /sub_sections/1.xml
  def destroy
    @sub_section = SubSection.find(params[:id])
    @sub_section.destroy

    respond_to do |format|
      format.html { redirect_to(sub_sections_url) }
      format.xml  { head :ok }
    end
  end
end
