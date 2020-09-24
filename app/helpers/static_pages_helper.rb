

module StaticPagesHelper
  def markdown

    docs = File.read("#{Rails.root}/app/assets/markdown/docs.md")

    options = {
      autolink: true,
      space_after_headers: true,
      fenced_code_blocks: true,
      tables: true,
      hard_wrap: true,
      lax_html_blocks: true,
      strikethrough: true
    }
    renderer = Redcarpet::Render::HTML.new(
      link_attributes: { rel: 'nofollow', target: "_blank" }
    )
    markdown = Redcarpet::Markdown.new(renderer, options)

    markdown.render(docs).html_safe
  end
end
