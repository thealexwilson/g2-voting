include HTTParty

class Employee < ApplicationRecord
  has_many :votes, dependent: :destroy
end

@employees = HTTParty.get('http://api.myjson.com/bins/jhz5z',
    :headers =>{'Content-Type' => 'application/json'}).parsed_response
    # @employees = Employee.all    
    @employees.each do |employee|
      self.create!(id: employee["id"], image_url: employee["image_url"], name: employee["name"], title: employee["title"], bio: employee["bio"])
    end