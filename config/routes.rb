Rails.application.routes.draw do
  get 'oficinas/listar', to: 'oficinas#listar'
  get 'oficinas/crear', to: 'oficinas#crear'
  post 'oficinas/guardar', to: 'oficinas#guardar'

  # rutas inquilinos
  get 'inquilinos/crear', to: 'inquilinos#crear'
  post 'inquilinos/crear', to: 'inquilinos#guardar'
end
