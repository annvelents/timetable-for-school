groups_names = ["5a", "5б", "6а", "6б", "7а", "7б", "8а", "8б", "9а", "9б", "10а", "10б", "11а", "11б"]

groups_names.each do|name|
  Group.create!({name: name})
end
