module MywordsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_mywords_path
    else action_name == 'edit'
      myword_path
    end
  end
end
