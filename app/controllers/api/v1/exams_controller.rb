class Api::V1::ExamsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: %i[index show]
  before_action :set_exam, only: %i[show update]

  def index
    @exams = policy_scope(Exam)
  end

  def show
  end

  def update
    if @exam.update(exam_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_exam
    @exam = Exam.find(params[:id])
    authorize @exam  # For Pundit
  end

  def exam_params
    params.require(:exam).permit(:description, :exam_name, :area)
  end

  def render_error
    render json: { errors: @exam.errors.full_messages },
      status: :unprocessable_entity
  end
end
