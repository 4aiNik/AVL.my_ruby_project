class WorkController < ApplicationController

  include WorkImage

  def index
    unless signed_in?
      redirect_to root_path
    end

    @images_count = Image.all.count
    # @selected_theme = "Select theme to leave your answer"
    @selected_image_name = ''
    @values_qty = Value.all.count
    @current_locale = I18n.locale
    session[:selected_theme_id] = @selected_theme # to display nothing
  end

  def choose_theme
    @themes = Theme.all.pluck(:name)
    respond_to :js
  end

  def display_theme
    logger.info "In work#display_theme"
    @image_data = {}
    I18n.locale = session[:current_locale]


    current_user_id = 1#current_user.id
    if params[:theme] == "-----" #.blank?
      theme = "Select theme to leave your answer"
      theme_id = 1
      values_qty = Value.all.count.round
      data = { index: 0, name: 'радуга', values_qty: values_qty,
               file: 'raduga5обрез.jpg', image_id: 4,
               current_user_id: current_user_id, user_valued: false,
               common_ave_value: 0, value: 0 }
    else
      theme = params[:theme]
      theme_id = Theme.find_theme_id(theme)
      data = show_image(theme_id, 0)
    end
    session[:selected_theme_id] = theme_id
    image_data(theme, data)
  end

end
