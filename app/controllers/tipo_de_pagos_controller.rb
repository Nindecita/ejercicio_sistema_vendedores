class TipoDePagosController < ApplicationController
  before_action :set_tipo_de_pago, only: %i[ show edit update destroy ]

  # GET /tipo_de_pagos or /tipo_de_pagos.json
  def index
    @tipo_de_pagos = TipoDePago.all
  end

  # GET /tipo_de_pagos/1 or /tipo_de_pagos/1.json
  def show
  end

  # GET /tipo_de_pagos/new
  def new
    @tipo_de_pago = TipoDePago.new
  end

  # GET /tipo_de_pagos/1/edit
  def edit
  end

  # POST /tipo_de_pagos or /tipo_de_pagos.json
  def create
    @tipo_de_pago = TipoDePago.new(tipo_de_pago_params)

    respond_to do |format|
      if @tipo_de_pago.save
        format.html { redirect_to tipo_de_pago_url(@tipo_de_pago), notice: "Tipo de pago was successfully created." }
        format.json { render :show, status: :created, location: @tipo_de_pago }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_pagos/1 or /tipo_de_pagos/1.json
  def update
    respond_to do |format|
      if @tipo_de_pago.update(tipo_de_pago_params)
        format.html { redirect_to tipo_de_pago_url(@tipo_de_pago), notice: "Tipo de pago was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_de_pago }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_pagos/1 or /tipo_de_pagos/1.json
  def destroy
    @tipo_de_pago.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_pagos_url, notice: "Tipo de pago was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_pago
      @tipo_de_pago = TipoDePago.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_de_pago_params
      params.require(:tipo_de_pago).permit(:nombre)
    end
end
