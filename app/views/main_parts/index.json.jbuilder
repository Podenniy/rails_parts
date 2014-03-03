json.array!(@main_parts) do |main_part|
  json.extract! main_part, :id
  json.url main_part_url(main_part, format: :json)
end
