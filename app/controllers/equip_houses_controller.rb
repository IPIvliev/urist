class EquipHousesController < ApplicationController
  # GET /equip_houses
  # GET /equip_houses.json
  def index
    @equip_houses = initialize_grid(EquipHouse,
                  name: 'equip_house',
                  order: 'created_at',
                  order_direction: 'desc',
                  :enable_export_to_csv => true,
                  :csv_field_separator => ';',
                  :csv_file_name => 'tasks',
                  :include => [:equip_values],
                  per_page: 50)

    export_grid_if_requested('equip_house' => 'equips')

  end

  # GET /equip_houses/1
  # GET /equip_houses/1.json
  def show
    @equip_house = EquipHouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equip_house }
    end
  end

  # GET /equip_houses/new
  # GET /equip_houses/new.json
  def new
    @equip_house = EquipHouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equip_house }
    end
  end

  # GET /equip_houses/1/edit
  def edit
    @equip_house = EquipHouse.find(params[:id])
  end

  # POST /equip_houses
  # POST /equip_houses.json
  def create
    @equip_house = EquipHouse.new(params[:equip_house])

    respond_to do |format|
      if @equip_house.save
        format.html { redirect_to @equip_house, notice: 'Equip house was successfully created.' }
        format.json { render json: @equip_house, status: :created, location: @equip_house }
      else
        format.html { render action: "new" }
        format.json { render json: @equip_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equip_houses/1
  # PUT /equip_houses/1.json
  def update
    @equip_house = EquipHouse.find(params[:id])

    respond_to do |format|
      if @equip_house.update_attributes(params[:equip_house])
        format.html { redirect_to @equip_house, notice: 'Equip house was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equip_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equip_houses/1
  # DELETE /equip_houses/1.json
  def destroy
    @equip_house = EquipHouse.find(params[:id])
    @equip_house.destroy

    respond_to do |format|
      format.html { redirect_to equip_houses_url }
      format.json { head :no_content }
    end
  end
end
