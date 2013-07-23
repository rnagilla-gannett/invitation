json.array!(@guest_lists) do |guest_list|
  json.extract! guest_list, :name, :email, :adults, :children
  json.url guest_list_url(guest_list, format: :json)
end
