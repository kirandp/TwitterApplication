class LinkController < ApplicationController
   def index
    @tweet_string=   Link.tweet
    if params[:user_name].nil?
       @user_name = "TIME"
       else
       @user_name = params[:user_name].to_s
    end
   	@recent= Twitter.search("from:#{@user_name}", :rpp => 10, :result_type => "recent") 
   end
end  
