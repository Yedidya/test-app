class Post < ActiveRecord::Base

  def make_post(post)
    self.content = post + " "
  end

  def add_to_post(additional_post)
    self.content = self.content + additional_post + " "
  end

  def current_post
    return content
  end
  
end
