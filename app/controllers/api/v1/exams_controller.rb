class Api::V1::ExamsController < Api::V1::BaseController
  before_action :set_exam, only: [ :show ]

  def index
    @exams = policy_scope(Exam)
  end

  def show
  end

  private

  def set_exam
    @exam = Exam.find(params[:id])
    authorize @exam  # For Pundit
  end
end
