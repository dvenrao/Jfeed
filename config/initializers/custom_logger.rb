require 'logger'

class CustomLogger
	
	#creates a unique log file with given name
	def initialize(name)
		@logger = Logger.new("public/#{name}.log")
	end


	def info(params)
		@logger.info("#{Time.now.to_s} : #{params}")
	end

	def warn(params)
		@logger.warn(params)
	end

	def debug(params)
		@logger.debug(params)
	end

	def error(params)
		@logger.error(params)
	end

	def fatal(params)
		@logger.fatal(params)
	end

	def close
		@logger.close()
	end
end
