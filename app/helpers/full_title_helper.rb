module FullTitleHelper
  # Returns the full title on per-page basis.

  def full_title(page_title)
    base_title = "TradingLog application"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
