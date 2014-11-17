module StaticPagesHelper

	def is_past_discount(expire_time, discount)
		if expire_time.past?
			raw "<del>#{discount}</del>"
		else
			raw "<code>#{discount}</code>"
		end	
	end	

	def is_past_expire_time(expire_time)
		if expire_time.past?
			#raw "<p><del>#{discount}</del></p>"
			raw "<del>Expired over #{distance_of_time_in_words_to_now expire_time} @ #{expire_time.strftime('%m/%d/%Y')}</del>"
		else
			raw "Expiring in #{distance_of_time_in_words_to_now expire_time} @ #{expire_time.strftime('%m/%d/%Y')}"
		end	
	end	
end
