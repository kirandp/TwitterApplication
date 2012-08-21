class Link < ActiveRecord::Base
 

#validates_presence_of :description, :url

  def self.tweet
    tweet = "tweet from my app"
    Twitter.user_timeline("TIME").first.text
    
     

  end

  
end

