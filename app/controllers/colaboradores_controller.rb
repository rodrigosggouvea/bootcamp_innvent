class ColaboradoresController < ApplicationController
  # GET /colaboradores
  # GET /colaboradores.json
  def index
    @colaboradores = Colaborador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @colaboradores }
    end
  end

  # GET /colaboradores/1
  # GET /colaboradores/1.json
  def show
    @colaborador = Colaborador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @colaborador }
    end
  end

  # GET /colaboradores/new
  # GET /colaboradores/new.json
  def new
    @colaborador = Colaborador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @colaborador }
    end
  end

  # GET /colaboradores/1/edit
  def edit
    @colaborador = Colaborador.find(params[:id])
  end

  # POST /colaboradores
  # POST /colaboradores.json
  def create
    @colaborador = Colaborador.new(params[:colaborador])

    respond_to do |format|
      if @colaborador.save
        format.html { redirect_to @colaborador, notice: 'Colaborador was successfully created.' }
        format.json { render json: @colaborador, status: :created, location: @colaborador }
      else
        format.html { render action: "new" }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /colaboradores/1
  # PUT /colaboradores/1.json
  def update
    @colaborador = Colaborador.find(params[:id])

    respond_to do |format|
      if @colaborador.update_attributes(params[:colaborador])
        format.html { redirect_to @colaborador, notice: 'Colaborador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaboradores/1
  # DELETE /colaboradores/1.json
  def destroy
    @colaborador = Colaborador.find(params[:id])
    @colaborador.destroy

    respond_to do |format|
      format.html { redirect_to colaboradores_url }
      format.json { head :no_content }
    end
  end
end
