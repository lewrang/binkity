class HomeController < ApplicationController
  def index
    @posts = Post.order(updated_at: :desc)
  end

  def gallery
    if params[:filter].blank?
      @pictures = Picture.all
    else
      @pictures = Picture.where("#{params[:filter]} = ?", true)
    end
    @filters = [{name: "Wszystkie", id: ''}, {name: "Bransoletki", id: 'is_bracelet'}, {name: "Kolczyki", id: 'is_earring'}, {name: "Naszyjniki", id: 'is_necklace'}, {name: "Komplety", id: 'is_set'}, {name: "Pozostałe", id: 'is_other'}]
  end

  def about
  end

  def cart
  end

  def contact_new
    @message = Message.new
  end

  def contact_create
    @message = Message.new(params[:message])

    if @message.valid?
      ContactMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      render action: 'contact_new'
    end
  end
end
