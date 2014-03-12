json.array!(@main_parts) do |main_part|
  json.extract! main_part, :id, :name_parts, :brand, :code_part, :code_parts_advanced, :ean, :status_product, :name_image
  json.url main_part_url(main_part, format: :json)
end
