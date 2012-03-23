# encoding: utf-8
class Admin::ManageSharesController < ApplicationController
  def index
    @shares = Share.paginate_by_sql("select s.content,s.total_vote,u.id u_id,s.id from shares s inner join users u on u.id=s.user_id order by created_at desc",:per_page=>5,:page=>params[:page])
  end

  def delete_share
    Share.delete(params[:delete_id].to_i)
    redirect_to request.referer
  end
end
