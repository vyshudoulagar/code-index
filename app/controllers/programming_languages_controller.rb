class ProgrammingLanguagesController < ApplicationController
  before_action :set_programming_language, only: %i[ show edit update destroy ]

  # GET /programming_languages or /programming_languages.json
  def index
    @programming_languages = ProgrammingLanguage.all
  end

  # GET /programming_languages/1 or /programming_languages/1.json
  def show
  end

  # GET /programming_languages/new
  def new
    @programming_language = ProgrammingLanguage.new
  end

  # GET /programming_languages/1/edit
  def edit
  end

  # POST /programming_languages or /programming_languages.json
  def create
    @programming_language = ProgrammingLanguage.new(programming_language_params)

    respond_to do |format|
      if @programming_language.save
        format.html { redirect_to programming_language_url(@programming_language), notice: "Programming language was successfully created." }
        format.json { render :show, status: :created, location: @programming_language }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @programming_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programming_languages/1 or /programming_languages/1.json
  def update
    respond_to do |format|
      if @programming_language.update(programming_language_params)
        format.html { redirect_to programming_language_url(@programming_language), notice: "Programming language was successfully updated." }
        format.json { render :show, status: :ok, location: @programming_language }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @programming_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programming_languages/1 or /programming_languages/1.json
  def destroy
    @programming_language.destroy!

    respond_to do |format|
      format.html { redirect_to programming_languages_url, notice: "Programming language was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programming_language
        @programming_language = ProgrammingLanguage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programming_language_params
        params.require(:programming_language).permit(:title, :description, :link)
    end
end
