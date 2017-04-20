class Employee < ApplicationRecord
  has_many :votes

  self.delete_all

  employee_list = HTTParty.get "http://api.myjson.com/bins/jhz5z"
  employee_list.each do |r|
    self.find_or_create_by!(picture: r["image_url"], name: r["name"], title: r["title"], bio: r["bio"])
  end
end
