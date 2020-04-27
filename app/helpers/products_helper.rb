module ProductsHelper
   def format_status(status)
	if status == 'active'
	 'Ativo'
	else
	 'Inativo'
        end	
   end
   def format_promotion(promotion)
	if promotion == 'yes'
	 'Sim'
	else
	 'Nao'
        end		
   end
   def format_condition(pricePRO)
	if pricePRO?
	 :pricePRO
	else
	 'Produto Nao esta em Promocao'
        end		
   end

end
