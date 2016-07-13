json.array!(@celebs) do |celeb|
  json.extract! celeb, :id, :first_name, :last_name, :full_name, :celeb_category_id
  json.url celeb_url(celeb, format: :json)
end
