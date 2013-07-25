class GuestListsController < ApplicationController
  before_action :set_guest_list, only: [:show, :edit, :update, :destroy]
  layout 'pop_up_layout' , only: [:new, :thankyou, :sorry, :comments]

  # GET /guest_lists
  # GET /guest_lists.json
  def index
    #@guest_lists = GuestList.all
  end

  # GET /guest_lists/1
  # GET /guest_lists/1.json
  def show
  end

  # GET /guest_lists/new
  def new
    @guest_list = GuestList.new
  end

  # GET /guest_lists/1/edit
  def edit
  end

  # POST /guest_lists
  # POST /guest_lists.json
  def create
    guest_list = GuestList.find_by_email(guest_list_params[:email])
    @guest_list = guest_list.nil? ? GuestList.new(guest_list_params) : guest_list
    guest_list.nil? ? @guest_list.save : @guest_list.update_attributes(guest_list_params)
    
    message = @guest_list.present? ? 'Thank you for your RSVP, See ya soon!' : 'Thank you for your RSVP, We will miss you :('

    respond_to do |format|
      if @guest_list
        format.html { redirect_to thankyou_url, notice: message }
      else
        format.html { render action: 'new' }
        format.json { render json: @guest_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def thankyou
  end

  def sorry
    flash[:notice] = "Sorry to see you go... Don't forget to comeback and atleast Leave a message for us !"
  end

  def comments
    @guest_lists = GuestList.all.order(:updated_at)
  end


  # PATCH/PUT /guest_lists/1
  # PATCH/PUT /guest_lists/1.json
  def update
    respond_to do |format|
      if @guest_list.update(guest_list_params)
        format.html { redirect_to guest_lists_url, notice: 'Thank you for updating RSVP, See ya soon !' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guest_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_lists/1
  # DELETE /guest_lists/1.json
  def destroy
    @guest_list.destroy
    respond_to do |format|
      format.html { redirect_to guest_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_list
      @guest_list = GuestList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_list_params
      params.require(:guest_list).permit(:name, :email, :adults, :children,:comment,:present)
    end
end
