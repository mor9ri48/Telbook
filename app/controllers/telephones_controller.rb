class TelephonesController < ApplicationController
  def new
    #関連付けられたモデルがあった場合
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
    @telephone.friend_id = params[:friend_id] #関連づけられている友達を保存する。
    if @telephone.save
      redirect_to new_friend_telephone_path(@friend), notice: "電話番号を追加しました。"
    else
      flash[:error] = @telephone.errors.full_messages #エラー文の受け取り
      redirect_to new_friend_telephone_path(@friend)
    end
  end

  def destroy
    @friend = Friend.find(params[:friend_id])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to new_friend_telephone_path(@friend), notice: "電話番号を削除しました。"
  end
end
