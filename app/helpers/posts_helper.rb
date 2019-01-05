module PostsHelper
  include ActsAsTaggableOn::TagsHelper
  include Pagy::Frontend

  def post_version_label(published)
    version_span_generator(published)
  end

  private
  def version_span_generator(published)
    case published
    when 'draft'
      content_tag(:span, "Draft", class: 'badge badge-warning')
    when 'final'
      content_tag(:span, "Final", class: 'badge badge-success')
    end
  end
end
