class Api::V1::ExamsController < Api::V1::BaseController
  def index
    # @exams = Exam.where(user: current_user)
    @exams = policy_scope(Exam)
  end
end
