class Eleccion < ActiveRecord::Base
    belongs_to :masa
    belongs_to :ingrediente
    belongs_to :tamano
    has_many :pedidos
end
