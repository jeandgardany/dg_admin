module ProductsHelper
   def format_status(status)
	if status == 'active'
	 'Ativo'
	else
	 'Inativo'
        end	
   end
   def format_promotion(promotion)
	if status == 'yes'
	 'Sim'
	else
	 'Nao'
        end		
   end
end
