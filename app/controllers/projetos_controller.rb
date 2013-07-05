#encoding: utf-8
class ProjetosController < ApplicationController
  def index
    @projetos = Projeto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projetos }
    end
  end

  def show
    @projeto = Projeto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projeto }
    end
  end

  def new
    @projeto = Projeto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @projeto }
    end
  end

  def edit
    @projeto = Projeto.find(params[:id])
  end

  def create
    @projeto = Projeto.new(params[:projeto])

    respond_to do |format|
      if @projeto.save
        format.html { redirect_to :action => :index, notice: 'Projeto criado com sucesso.' }
        format.json { render json: @projeto, status: :created, location: @projeto }
      else
        format.html { render action: "new" }
        format.json { render json: @projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @projeto = Projeto.find(params[:id])

    respond_to do |format|
      if @projeto.update_attributes(params[:projeto])
        format.html { redirect_to :action => :index, notice: 'Projeto atualizado com sucesso.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @projeto = Projeto.find(params[:id])
    @projeto.destroy

    respond_to do |format|
      format.html { redirect_to projetos_url }
      format.json { head :ok }
    end
  end

  def colaboradores
    @projeto = Projeto.find(params[:id])
    @colaboradores = @projeto.colaboradores
  end

  def adicionar_coordenador
    @projeto = Projeto.find(params[:id])
    params_cp = {:colaborador_id => params[:colaborador_id], :projeto_id => params[:projeto_id]}
    @colaborador_projeto = ColaboradorProjeto.new(params_cp)
    if @colaborador_projeto.save
      redirect_to colaboradores_projeto_path(@projeto), :notice => "Colaborador cadastrado com sucesso"
    else
      redirect_to colaboradores_projeto_path(@projeto), :error => "Não foi possível cadastrar esse colaborador. Erros: #{@colaborador_projeto.errors}"
    end
  end
end
