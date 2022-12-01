class Api::V1::QuestionsController < Api::V1::BaseController
  def index
    @questions = policy_scope(Question)
  end
end
