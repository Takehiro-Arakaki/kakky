class Admin::SelectsController < ApplicationController
  before_action :set_select, only: [:show, :edit, :update, :destroy]

  # GET /admin/selects
  # GET /admin/selects.json
  def index
    @selects = Select.all
  end

  # GET /admin/selects/1
  # GET /admin/selects/1.json
  def show
  end

  # GET /admin/selects/new
  def new
    @select = Select.new
  end

  # GET /admin/selects/1/edit
  def edit
  end

  # POST /admin/selects
  # POST /admin/selects.json
  def create
    @select = Select.new(select_params)

    respond_to do |format|
      if @select.save
        format.html { redirect_to @select, notice: 'Select was successfully created.' }
        format.json { render :show, status: :created, location: @select }
      else
        format.html { render :new }
        format.json { render json: @select.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/selects/1
  # PATCH/PUT /admin/selects/1.json
  def update
    respond_to do |format|
      if @select.update(select_params)
        format.html { redirect_to @select, notice: 'Select was successfully updated.' }
        format.json { render :show, status: :ok, location: @select }
      else
        format.html { render :edit }
        format.json { render json: @select.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/selects/1
  # DELETE /admin/selects/1.json
  def destroy
    @select.destroy
    respond_to do |format|
      format.html { redirect_to selects_url, notice: 'Select was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_select
      @select = Select.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def select_params
      params.require(:select).permit(:question_id, :content, :is_right)
    end
end
