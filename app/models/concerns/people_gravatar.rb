module PeopleGravatar
  
  def image_url
    @image_url ||= "http://www.gravatar.com/avatar/#{gravatar_hash}"
  end
  def gravatar_hash
    @gravatar_hash ||= Digest::MD5.hexdigest(email)
  end

end
