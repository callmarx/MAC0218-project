class Post < ApplicationRecord
  belongs_to :user

  ###! 
  # O atributo :post_type é apenas para definir se o post trata-se de uma oferta de aula
  # ou uma procura por determinada aula. Sendo assim vamos delimita-lo com o seguinte:
  validates :post_type, inclusion: { in: %w(offer looking),
    message: "%{value} is not a valid post_type. Only \"offer\" and \"looking\" are allowed" }
end
