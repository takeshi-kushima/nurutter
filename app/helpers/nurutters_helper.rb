module NuruttersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_nurutters_path
    elsif action_name == 'edit'
      nurutter_path
    end
  end
end
