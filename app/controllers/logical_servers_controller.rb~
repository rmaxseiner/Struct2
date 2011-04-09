class PhysicalServersController < ApplicationController
  # GET /physical_servers
  # GET /physical_servers.xml
  def index
    @physical_servers = PhysicalServer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @physical_servers }
    end
  end

  # GET /physical_servers/1
  # GET /physical_servers/1.xml
  def show
    @physical_server = PhysicalServer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @physical_server }
    end
  end

  # GET /physical_servers/new
  # GET /physical_servers/new.xml
  def new
    @physical_server = PhysicalServer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @physical_server }
    end
  end

  # GET /physical_servers/1/edit
  def edit
    @physical_server = PhysicalServer.find(params[:id])
  end

  # POST /physical_servers
  # POST /physical_servers.xml
  def create
    @physical_server = PhysicalServer.new(params[:physical_server])

    respond_to do |format|
      if @physical_server.save
        format.html { redirect_to(@physical_server, :notice => 'Physical server was successfully created.') }
        format.xml  { render :xml => @physical_server, :status => :created, :location => @physical_server }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @physical_server.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /physical_servers/1
  # PUT /physical_servers/1.xml
  def update
    @physical_server = PhysicalServer.find(params[:id])

    respond_to do |format|
      if @physical_server.update_attributes(params[:physical_server])
        format.html { redirect_to(@physical_server, :notice => 'Physical server was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @physical_server.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_servers/1
  # DELETE /physical_servers/1.xml
  def destroy
    @physical_server = PhysicalServer.find(params[:id])
    @physical_server.destroy

    respond_to do |format|
      format.html { redirect_to(physical_servers_url) }
      format.xml  { head :ok }
    end
  end
end
