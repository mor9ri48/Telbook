class TelephonesController < ApplicationController
  def new
    if params[:friend_id]
      @friend = Friend.find(params[:friend_id])
      @telephones = @friend.telephones
    else
      @telephones = Telephone.all
    end
    @telephone = Telephone.new
  end

  def create
    @friend = Friend.find(params[:friend_id])
    @telephone = Telephone.new(params[:telephone])
    @telephone.friend_id = params[:friend_id]
    if @telephone.save
      redirect_to new_friend_telephone_path(@friend), notice: "友達の電話番号を追加しました。"
    else
      redirect_to new_friend_telephone_path(@friend)
    end
  end

  def destroy
    @friend = Friend.find(params[:friend_id])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to new_friend_telephone_path(@friend), notice: "友達の電話番号を削除しました。"
  end
end
