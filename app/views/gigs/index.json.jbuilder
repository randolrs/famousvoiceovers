json.array!(@gigs) do |gig|
  json.extract! gig, :id, :title, :description, :script, :price_gig, :price_audition
  json.url gig_url(gig, format: :json)
end
