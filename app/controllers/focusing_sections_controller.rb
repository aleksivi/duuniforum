class FocusingSectionsController < ApplicationController
  # GET /focusing_sections
  # GET /focusing_sections.xml
  def index
    @focusing_sections = FocusingSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @focusing_sections }
    end
  end

  # GET /focusing_sections/1
  # GET /focusing_sections/1.xml
  def show
    @focusing_section = FocusingSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @focusing_section }
    end
  end

  # GET /focusing_sections/new
  # GET /focusing_sections/new.xml
  def new
    @focusing_section = FocusingSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @focusing_section }
    end
  end

  # GET /focusing_sections/1/edit
  def edit
    @focusing_section = FocusingSection.find(params[:id])
  end

  # POST /focusing_sections
  # POST /focusing_sections.xml
  def create
    @focusing_section = FocusingSection.new(params[:focusing_section])

    respond_to do |format|
      if @focusing_section.save
        format.html { redirect_to(@focusing_section, :notice => 'Focusing section was successfully created.') }
        format.xml  { render :xml => @focusing_section, :status => :created, :location => @focusing_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @focusing_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /focusing_sections/1
  # PUT /focusing_sections/1.xml
  def update
    @focusing_section = FocusingSection.find(params[:id])

    respond_to do |format|
      if @focusing_section.update_attributes(params[:focusing_section])
        format.html { redirect_to(@focusing_section, :notice => 'Focusing section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @focusing_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /focusing_sections/1
  # DELETE /focusing_sections/1.xml
  def destroy
    @focusing_section = FocusingSection.find(params[:id])
    @focusing_section.destroy

    respond_to do |format|
      format.html { redirect_to(focusing_sections_url) }
      format.xml  { head :ok }
    end
  end
def for_industryid
    @focusingsections = FocusingSection.find_all_by_industry_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @focusingsections }      
    end
  end
  
end
