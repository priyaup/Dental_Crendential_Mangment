class LocationsController < ApplicationController
  def index
    @q = Location.ransack(params[:q])
    @locations = params[:q].present? ? @q.result(distinct: true) : Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path, notice: 'Location was successfully created.'
    else
      flash.now[:errors] = @location.errors.full_messages
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def edit_corporate
    @location = Location.find(params[:id])
  end

  def edit_technical
    @location = Location.find(params[:id])
  end

  def location_specification
    @location = Location.find(params[:id])
  end

  def services
    @location = Location.find(params[:id])
  end

  def miscellaneous
    @location = Location.find(params[:id])
  end

  def liability
    @location = Location.find(params[:id])
  end

  def save
    @location = Location.find(params[:id])
  end

  def save_location
    @location = Location.find(params[:id])

    if @location.update(location_params)
      render json: { success: true }
    else
      render json: { success: false, errors: @location.errors.messages }
    end
  end

  def update
  @location = Location.find(params[:id])
  
  # Assuming all fields from previous pages are saved via jQuery and the last page submits the final state
  if @location.update(location_params)
    redirect_to locations_path, notice: 'Location was successfully saved and closed.'
  else
    flash[:errors] = @location.errors.full_messages
    render :save, status: :unprocessable_entity
  end
end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path, notice: 'Location was successfully deleted.'
  end

  private

  def location_params
    params.fetch(:location, {}).permit(
      :name,
      :office_manager_email,
      :duplication_data_row,
      :office_name,
      :office_street_address,
      :office_suite_blog,
      :office_city,
      :office_state,
      :office_zip,
      :office_country,
      :office_telephone,
      :office_fax,
      :contact_person,
      :last_name,
      :first_name,
      :telephone,
      :fax,
      :email,
      :street_address,
      :city,
      :state,
      :zip,
      :phone,
      :corporate_npi,
      :group_corporate_name_as_it_appears_on_w9,
      :group_tax_id,
      :office_email_address,
      :web_address,
      :individual_business,
      :group,
      :dental_school,
      :clinic,
      :fqhc,
      :indian_health_services,
      :mobile_unit,
      :carrier_of_self_insured_name,
      :expiration_date,
      :amount_of_coverage_per_occurrence,
      :amount_of_coverage_aggregate,
      :policy_number,
      :community_provider,
      :free_parking,
      :monday_open,
      :monday_close,
      :tuesday_open,
      :tuesday_close,
      :wednesday_open,
      :wednesday_close,
      :thursday_open,
      :thursday_close,
      :friday_open,
      :friday_close,
      :saturday_open,
      :saturday_close,
      :sunday_open,
      :sunday_close,
      :internet_connection,
      :ada_accessibility,
      :accepting_new_patients,
      :treat_children,
      :treat_disabled_adults,
      :treat_disabled_children,
      :early_morning_appointments,
      :evening_appointments,
      :language_1,
      :language_2,
      :language_3,
      :interpreted_language_1,
      :interpreted_language_2,
      :interpreted_language_3
    )
  end
end
