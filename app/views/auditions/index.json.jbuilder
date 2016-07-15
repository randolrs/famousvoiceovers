json.array!(@auditions) do |audition|
  json.extract! audition, :id, :gig_id, :user_id, :comments
  json.url audition_url(audition, format: :json)
end
