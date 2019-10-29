module ProductsHelper
	def format_status(status)
		if status == 'active'
			'Ativo'
		else
		'Inativo'
		end
		
	end

end
