class Employee < ApplicationRecord
  self.delete_all

  roster = HTTParty.get "http://api.myjson.com/bins/jhz5z"
  roster.each do |r|
    self.create!(picture: r["image_url"], name: r["name"], title: r["title"], bio: r["bio"])
  end
end
