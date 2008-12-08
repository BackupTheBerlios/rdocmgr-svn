class DocumentVersionsController < ApplicationController
  # GET /document_versions
  # GET /document_versions.xml
  def index
    @document_versions = DocumentVersion.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @document_versions }
    end
  end

  # GET /document_versions/1
  # GET /document_versions/1.xml
  def show
    @document_version = DocumentVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @document_version }
    end
  end

  # GET /document_versions/new
  # GET /document_versions/new.xml
  def new
    @document_version = DocumentVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @document_version }
    end
  end

  # GET /document_versions/1/edit
  def edit
    @document_version = DocumentVersion.find(params[:id])
  end

  # POST /document_versions
  # POST /document_versions.xml
  def create
    @document_version = DocumentVersion.new(params[:document_version])

    respond_to do |format|
      if @document_version.save
        flash[:notice] = 'DocumentVersion was successfully created.'
        format.html { redirect_to(@document_version) }
        format.xml  { render :xml => @document_version, :status => :created, :location => @document_version }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /document_versions/1
  # PUT /document_versions/1.xml
  def update
    @document_version = DocumentVersion.find(params[:id])

    respond_to do |format|
      if @document_version.update_attributes(params[:document_version])
        flash[:notice] = 'DocumentVersion was successfully updated.'
        format.html { redirect_to(@document_version) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @document_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /document_versions/1
  # DELETE /document_versions/1.xml
  def destroy
    @document_version = DocumentVersion.find(params[:id])
    @document_version.destroy

    respond_to do |format|
      format.html { redirect_to(document_versions_url) }
      format.xml  { head :ok }
    end
  end
end
