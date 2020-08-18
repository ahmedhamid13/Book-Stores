json.extract! social_link, :id, :site, :link, :store_id, :created_at, :updated_at
json.url social_link_url(social_link, format: :json)
