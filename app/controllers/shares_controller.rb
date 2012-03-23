#encoding: utf-8
class SharesController < ApplicationController

  def index
    @shares = Share.paginate_by_sql("select * from shares order by created_at desc",:per_page=>5,:page=>params[:page])
    @detail={}
    @shares.each do |share|
      @detail[share.id]=!Vote.first(:conditions=>"user_id=#{cookies[:user_id]} and share_id=#{share.id}").nil?||share.user_id==cookies[:user_id].to_i
    end
  end


  def vote_u
    share=Share.find(params[:vote_id].to_i)
    share.update_attributes(:total_vote=>share.total_vote+1)
    Vote.create(:user_id=>cookies[:user_id],:share_id=>params[:vote_id].to_i)
    redirect_to request.referer
  end

  #发表分享
  def create
   Share.create(:user_id=>cookies[:user_id],:content=>params[:share_content])
    redirect_to request.referer
  end

end
