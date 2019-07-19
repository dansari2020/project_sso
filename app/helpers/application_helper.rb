# frozen_string_literal: true

module ApplicationHelper
  MARKDOWN_OPTIONS = { autolink: true, space_after_headers: true, fenced_code_blocks: true }.freeze

  def markdown(text)
    markdown = Redcarpet::Markdown.new(HTMLWithCoderay, MARKDOWN_OPTIONS)
    markdown.render(text).html_safe
  end
end
