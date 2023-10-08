class Product < ApplicationRecord
  ESTADO = %w(ARRIENDO ENTREGADO VENTA PRESTAMO RESERVA PAGO INVERSION)
  belongs_to :client
  has_one :company, through: :client
  #Validaciones

end
