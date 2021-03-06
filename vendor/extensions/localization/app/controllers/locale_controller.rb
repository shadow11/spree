class LocaleController < ApplicationController

  def set
    if params[:locale]
      Locale.code = params[:locale]
      session[:locale] = params[:locale]
      flash[:notice] = t("Locale changed")
    end
    redirect_to (request.env['HTTP_REFERER'] or root_path)
  end

end
