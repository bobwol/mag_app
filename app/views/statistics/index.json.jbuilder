json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :ios_installs, :android_installs, :app_id, :users_total, :user_id
  json.url statistic_url(statistic, format: :json)
end
