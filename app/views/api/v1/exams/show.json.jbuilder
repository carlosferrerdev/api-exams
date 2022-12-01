json.extract! @exam, :id, :description, :exam_name, :area
json.questions @exam.questions do |question|
  json.extract! question, :id, :statement
end
