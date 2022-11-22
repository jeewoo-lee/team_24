# frozen_string_literal: true

# Takes original code set up with creating a rep
# but adds in the optional parameters of officialPhoto,
# and official address
# I separated the address and photo into helper methods
# to keep civic method clean
# find_rep creates new rep if one is not found with same name as rep,
# utilizes find_by method to get rep if it exsists.

class Representative < ApplicationRecord
  has_many :news_items, dependent: :delete_all

  def self.civic_api_to_representative_params(rep_info)
    reps = []

    rep_info.officials.each_with_index do |official, index|
      ocdid_temp = ''
      title_temp = ''

      rep_info.offices.each do |office|
        if office.official_indices.include? index
          title_temp = office.name
          ocdid_temp = office.division_id
        end
      end

      official_photo = get_photo(official)
      official_address = find_address(official)
      rep = find_rep(official, official_address, ocdid_temp, title_temp, official_photo)
      reps.push(rep)
    end

    reps
  end

  def self.get_photo(official)
    official.photo_url if official.respond_to?('photo_url')
  end

  def self.find_address(official)
    if official.address
      official.address[0]
    else
      JSON.parse({ line1: 'N/A', state: '', city: '', zip: '' }.to_json, object_class: OpenStruct)
    end
  end

  def self.find_rep(official, official_address, ocdid_temp, title_temp, official_photo)
    if Representative.exists?(name: official.name, ocdid: ocdid_temp, title: title_temp)
      Representative.find_by(name: official.name, ocdid: ocdid_temp, title: title_temp)
    else
      Representative.create!({ name: official.name, ocdid: ocdid_temp,
      title: title_temp, party: official.party, street: official_address.line1,
      state: official_address.state, city: official_address.city, zip: official_address.zip,
      photo_url: official_photo })
    end
  end
end
