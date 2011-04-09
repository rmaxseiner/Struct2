class LogicalServersController < ApplicationController
  # GET /logical_servers
  # GET /logical_servers.xml
  def index
    @logical_servers = LogicalServer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logical_servers }
    end
  end

  # GET /logical_servers/1
  # GET /logical_servers/1.xml
  def show
    @logical_server = LogicalServer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @logical_server }
    end
  end

  # GET /logical_servers/new
  # GET /logical_servers/new.xml
  def new
    @logical_server = LogicalServer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @logical_server }
    end
  end

  # GET /logical_servers/1/edit
  def edit
    @logical_server = LogicalServer.find(params[:id])
  end

  # POST /logical_servers
  # POST /logical_servers.xml
  def create
    @logical_server = LogicalServer.new(params[:logical_server])

    respond_to do |format|
      if @logical_server.save
        format.html { redirect_to(@logical_server, :notice => 'Physical server was successfully created.') }
        format.xml  { render :xml => @logical_server, :status => :created, :location => @logical_server }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @logical_server.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logical_servers/1
  # PUT /logical_servers/1.xml
  def update
    @logical_server = LogicalServer.find(params[:id])

    respond_to do |format|
      if @logical_server.update_attributes(params[:logical_server])
        format.html { redirect_to(@logical_server, :notice => 'Physical server was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @logical_server.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logical_servers/1
  # DELETE /logical_servers/1.xml
  def destroy
    @logical_server = LogicalServer.find(params[:id])
    @logical_server.destroy

    respond_to do |format|
      format.html { redirect_to(logical_servers_url) }
      format.xml  { head :ok }
    end
  end
end
