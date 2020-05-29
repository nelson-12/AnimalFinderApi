class Animal < ApplicationRecord
  include ActiveModel::Serializers::JSON
  include Rails.application.routes.url_helpers
  belongs_to :user
  has_one_attached :photo

  def attributes
    {
      'id' => nil,
      'updated_at' => nil,
      'name' => nil,
      'age' => nil,
      'extra_information' => nil,
      'state' => nil,
      'city' => nil,
      'status' => nil,
      'created_at' => nil,
      'photo_url' => nil,
      'name_finder' => nil,
      'phone_number_finder' => nil
    }
  end

  def photo_url
    rails_blob_path(photo, only_path: true) if photo.attached?
  end
end
