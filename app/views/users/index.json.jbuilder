json.array!(@users) do |user|
    json.datas user.datas
    json.ffts user.ffts
end