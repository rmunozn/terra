class Pedido < ActiveRecord::Base
    belongs_to :eleccion
    belongs_to :tipo
    belongs_to :extra
    belongs_to :promocion
    has_many :facturas
end
