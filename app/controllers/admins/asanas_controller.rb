class Admins::AsanasController <  Admins::BaseController

  before_action :find_asana, only: [:edit, :update]

  def new
    @asana = Asana.new
    if Rails.env.development?
      @asana = FactoryBot.build(:asana)
    end
  end

  def create
    @asana = Asana.new(asana_params)
    if @asana.save
      flash_created
      redirect_to edit_admins_asana_path(@asana)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @asana.update_attributes(asana_params)
      flash_updated
      redirect_to edit_admins_asana_path(@asana)
    else
      render 'edit'
    end
  end

  def index
    @asanas = Asana.all.order(asana_order: :asc)
  end

  private

  def asana_params
    params.require(:asana).permit(:sanskrit_name, :name, :asana_order, :introduction, :technique, :variation, :concentration, :afterward,  chakras_attributes: [:id, :name, :_destroy], benefits_attributes: [:id, :name, :_destroy], body_parts_attributes: [:id, :name, :_destroy], restrictions_attributes: [:id, :name, :_destroy], effects_attributes: [:id, :name, :_destroy])
  end

  def find_asana
    @asana = Asana.friendly.find(params[:id])
  end

end
