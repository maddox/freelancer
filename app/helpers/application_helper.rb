# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper


  def form_model_buttons(models, options={})
    %{<div class="form_buttons">#{save_model_button(models, options)} or #{cancel_button(models)}</div>}
  end

  def save_model_button(models, options={})
    model = models == Array ? models.last : models
    
    label = if model.new_record?
      "Create #{Inflector.titleize(model.class.name.singularize)}"
    else
      'Save Changes'
    end
    
    submit_tag label, options.merge(:id => model.class.to_s.underscore + '_submit')
  end

  def cancel_button(models)
    model = models.class == Array ? models.last : models

    if model.new_record?
      link_to 'Cancel', request.referer
    else
      if models == Array
        link_to 'Cancel', self.send(models.first.class.name.underscore + "_" + models.last.class.name.underscore + "_path", models[0], models[1])
      else
        link_to 'Cancel', self.send(model.class.name.underscore + "_path", model)
      end
    end

  end





end

