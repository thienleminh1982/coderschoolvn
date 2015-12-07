json.array!(@menus) do |menu|
  json.extract! menu, :id, :section
  json.url menu_url(menu, format: :json)
end
