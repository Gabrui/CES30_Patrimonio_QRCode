module ApplicationHelper

  def classe_pagina_ativa(link)
    current_page?(link) ? "active" : ""
  end

  def elemento_pagina_ativa(link)
    current_page?(link) ? "<span class='sr-only'>(atual)</span>" : ""
  end

end
