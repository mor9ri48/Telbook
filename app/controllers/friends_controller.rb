class FriendsController < ApplicationController
  def index
    @friends = Friend.order(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def create
    @friend = Friend.new(params[:friend])
    if @friend.save
      redirect_to :friends, notice: "友達の名前を登録しました。"
    else
      render "new"
    end
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to :friends, notice: "友達の名前を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "会員を削除しました。"
  end

end
