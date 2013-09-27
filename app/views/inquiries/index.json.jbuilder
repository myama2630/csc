json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :receptiondate, :contact, :client, :memo, :utanto, :ttanto, :ctanto, :jyokyo, :youken, :recontact, :kinkyu, :taiou, :gotaiou, :tmemo, :ctantom_id, :contact_id
  json.url inquiry_url(inquiry, format: :json)
end
