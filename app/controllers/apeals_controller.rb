# encoding: utf-8

class ApealsController < ApplicationController
  # GET /apeals
  # GET /apeals.json
  def index
    @apeals = initialize_grid(Apeal, :conditions => ['finish = ?', false],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 10)

    respond_to do |format|
      format.html #
    end
  end

  def old_apeals
    @apeals = initialize_grid(Apeal, :conditions => ['finish = ?', true],
                  order: 'created_at',
                  order_direction: 'desc',
                  per_page: 10)

    respond_to do |format|
      format.html #
    end
  end  

  # GET /apeals/1
  # GET /apeals/1.json
  def show
    @apeal = Apeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apeal }
    end
  end

  # GET /apeals/new
  # GET /apeals/new.json
  def new
    @apeal = Apeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apeal }
    end
  end

  # GET /apeals/1/edit
  def edit
    @apeal = Apeal.find(params[:id])
  end

  # POST /apeals
  # POST /apeals.json
  def create
    @apeal = Apeal.new(params[:apeal])

      if @apeal.save
        if current_user
          redirect_to @apeal
        else
          flash[:success] = "<strong>Ваша жалоба отправлена успешно</strong>. Специалит свяжется с Вами по указанному номеру телефона в ближайшее время.".html_safe
          redirect_to "/contact.html"
        end
      else
        format.html { render action: "new" }
        format.json { render json: @apeal.errors, status: :unprocessable_entity }
      end
  end

  # PUT /apeals/1
  # PUT /apeals/1.json
  def update
    @apeal = Apeal.find(params[:id])

    respond_to do |format|
      if @apeal.update_attributes(params[:apeal])
        format.html { redirect_to @apeal, notice: 'Apeal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apeals/1
  # DELETE /apeals/1.json
  def destroy
    @apeal = Apeal.find(params[:id])
    @apeal.destroy

    respond_to do |format|
      format.html { redirect_to apeals_url }
      format.json { head :no_content }
    end
  end
end
