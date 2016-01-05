#!/usr/bin/env ruby

VERBOSE=false


module Parsers

	class Lang
		def initialize(code)
			@code = code
			@command = "echo" #default to just an echo command 
		end
		def formatCode
			#puts "Formatting code"
			@formatedCode = @code
		end
		def run
			formatCode
			system "#{@command} #{@formatedCode}"
		end
	end

	class Python < Lang
		def initialize(code)
			super code
			@command = "python -c"
		end
		def formatCode
			@formatedCode = "\'"+@code+"\'"
		end
	end

end

