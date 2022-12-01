json.extract! @exam, :id, :description
json.comments @exam.comments do |comment|
  json.extract! comment, :id, :description
  json.user do
    json.id comment.user.id
    json.email comment.user.email
  end
end
