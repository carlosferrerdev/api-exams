class Api::V1::QuestionsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: %i[index show]
  before_action :set_question, only: %i[show update destroy]

  def index
    @questions = policy_scope(question)
  end

  def show
  end

  def update
    if @question.update(question_params)
      render :show
    else
      render_error
    end
  end

  def create
    @question = question.new(question_params)
    @question.user = current_user
    authorize @question
    if @question.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @question.destroy
    head :no_content
  end

  private

  def set_question
    @question = question.find(params[:id])
    authorize @question  # For Pundit
  end

  def question_params
    params.require(:question).permit(:statement)
  end

  def render_error
    render json: { errors: @question.errors.full_messages },
      status: :unprocessable_entity
  end
end
