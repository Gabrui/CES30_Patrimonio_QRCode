json.set! :data do
  json.array! @categorias do |categoria|
    json.partial! 'categorias/categoria', categoria: categoria
    json.url  "
              #{link_to 'Show', categoria }
              #{link_to 'Edit', edit_categoria_path(categoria)}
              #{link_to 'Destroy', categoria, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end