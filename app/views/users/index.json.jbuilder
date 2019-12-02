json.array!(@users) do |user|
    json.frequencies user.frequencies
    json.ffts user.ffts
end