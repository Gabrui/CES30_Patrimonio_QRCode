class Item < ApplicationRecord
  belongs_to :silom
  belongs_to :usuario
  belongs_to :local

  def item_descricao
    item.try(:descricao)
  end
  
  def item_descricao=(descricao)
    self.item = Item.find_by(descricao: descricao) if descricao.present?
  end

  def livres_silom
    
  end

end
