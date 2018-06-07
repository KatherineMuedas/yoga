class AsanasController < ApplicationController
  def index
    if params[:search_type].present?
      case params[:search_type].downcase
      when 'chakras'
        params[:search] = "Muladhara" unless params[:search].present?
        search = params[:search].gsub('-', ' ').capitalize
        @asanas = Asana.jsonb_contains("chakras.name" => search)
      when 'benefits'
        params[:search] = "Better flexibility"  unless params[:search].present?
        search = params[:search].gsub('-', ' ').capitalize
        @asanas = Asana.jsonb_contains("benefits.name" => search)
      when 'body-parts'
        params[:search] = "Head" unless params[:search].present?
        search = params[:search].gsub('-', ' ').capitalize
        @asanas = Asana.jsonb_contains("body_parts.name" => search)
      when 'restrictions'
        params[:search] = "Children under age of 12"  unless params[:search].present?
        search = params[:search].gsub('-', ' ').capitalize
        @asanas = Asana.jsonb_contains("restrictions.name" => search)
      end
    else
      @asanas = Asana.all
    end
  end

  def show
    @asana = Asana.friendly.find(params[:id])
  end

end








