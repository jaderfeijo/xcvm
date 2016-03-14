module Xcvm
	class Build
		attr_accessor :build

		def initialize(build)
			@build = build
		end

		def increment!
			self.build += 1
		end

		def decrement!
			self.build -= 1
		end

		def to_i
			return self.build
		end

		def to_s
			return self.build.to_s
		end

		def inspect
			self.to_i
		end
	end
end
