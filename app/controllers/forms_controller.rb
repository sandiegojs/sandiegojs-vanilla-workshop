class FormsController < ApplicationController
  before_action :set_form, only: [:show, :update, :destroy]
  
  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all

    render json: @forms
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
    render json: @form, include: [ :skills ]
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)

    if @form.save
      render json: @form, status: :created, location: @form, include: [ :skills ]
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    @form = Form.find(params[:id])

    if @form.update(form_params)
      head :no_content
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy

    head :no_content
  end

  private
    def set_form
      @form = Form.find(params[:id])
    end

    def form_params
      params.require(:form).permit(:name, :email, :city, :state, :github, :twitter, :bio, skills_attributes: [ :description ])
    end
end
