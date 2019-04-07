# creating the users in the database
User.create!([
  {email: "useradmin@useradmin.com", password: "martial", password_confirmation: "martial", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, created_at: nil, updated_at: nil, admin: true, trainer: false},
  {email: "user@user.com", password: "martial", password_confirmation: "martial", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, created_at: nil, updated_at: nil, admin: false, trainer: false}
])


# creating the trainers in the database
Trainer.create!([
  {photo: "", first_name: "Noel", last_name: "McNamee", phone: "0875676554", bio: "", experience: "7 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Harry", last_name: "Maguire", phone: "0874251109", bio: "", experience: "10 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Ciara", last_name: "Wells", phone: "0877925512", bio: "", experience: "15 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Vincent", last_name: "Martin", phone: "0834211554", bio: "", experience: "22 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "John", last_name: "Matthews", phone: "0859083154", bio: "", experience: "8 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Keith", last_name: "Fay", phone: "0865678854", bio: "", experience: "7 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Sarah", last_name: "McLoughlin", phone: "0875677922", bio: "", experience: "5 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Katie", last_name: "Hart", phone: "0838875445", bio: "", experience: "11 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Noel", last_name: "McNamee", phone: "0865522154", bio: "", experience: "9 Years", created_at: nil, updated_at: nil },
  {photo: "", first_name: "Zoey", last_name: "Brooke", phone: "0855441554", bio: "", experience: "5 Years", created_at: nil, updated_at: nil }
])

# creating the courses in the database
Course.create!([
  {course_name: "Glen Mill Golf Club", location: "Tinmore, Newcastle, Co Wicklow", holes: "18", par: "3", created_at: nil, updated_at: nil, latitude: "53.069318", longitude: "-6.091144" },
  {course_name: "Stepaside Golf Course", location: "Stepaside Golf Centre Jamestown Farm Kilternan", holes: "18", par: "3", created_at: nil, updated_at: nil, latitude: "53.244432", longitude: "-6.206607" },
  {course_name: "Mahon Golf Course", location: "Clover Hill Estate, Skehard Rd, Blackrock, Cork, T12 DX72", holes: "9", par: "5", created_at: nil, updated_at: nil, latitude: "51.885064", longitude: "-8.420504" },
  {course_name: "Wicklow Golf Club", location: "Dunbur Rd, Corporation Lands, Wicklow", holes: "9", par: "5", created_at: nil, updated_at: nil, latitude: "52.974701", longitude: "-6.025903" },
  {course_name: "Enniscrone Golf Club", location: "Enniscrone, Co. Sligo", holes: "9", par: "5", created_at: nil, updated_at: nil, latitude: "54.205906", longitude: " -9.106708" }
])

