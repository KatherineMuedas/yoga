module FormHelper
  def form_error_messages(form_errors)
    return "" if form_errors.empty?
    messages = []
    form_errors.messages.each do |field, errors|
      errors.each do |error|
        if field == :base
          messages << content_tag(:p, "<strong>#{error}</strong>.".html_safe)
        else
          messages << content_tag(:p, "<strong>#{field.to_s.titleize}</strong> #{error}.".html_safe)
        end
      end
    end
    # CHANGE ME
    html = <<-HTML
    <div class='row'>
      <div class='col s12'>
        <div id="error_explanation" class="card yellow lighten-5">
          <div class="card-content pad-25">
            <span class="strong card-title">⚠️ Found #{pluralize(form_errors.count, 'error')}:</span>
            <div class="error_messages">
              <blockquote>
                #{messages.join}
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </div>
    HTML

    html.html_safe
  end

end
