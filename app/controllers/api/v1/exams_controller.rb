class Api::V1::ExamsController < Api::V1::BaseController
  def index
    @exams = policy_scope(Exam)
  end
end
