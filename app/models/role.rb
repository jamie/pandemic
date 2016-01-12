class Role < ApplicationRecord
  def image_url
    "token/#{name.gsub(' ','')}.png"
  end
end
