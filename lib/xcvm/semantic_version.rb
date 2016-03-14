module Xcvm
	class SemanticVersion
		attr_accessor :major
		attr_accessor :minor
		attr_accessor :revision

		def initialize(version)
			ver = version.split('.')
			@major = ver[0].to_i
			@minor = ver[1].to_i
			if ver[2] != nil then
				@revision = ver[2].to_i
			end
		end

		def increment!(segment)
			if segment == :major then
				self.major += 1
				return true
			elsif segment == :minor then
				self.minor += 1
				return true
			elsif segment == :revision then
				if self.revision != nil then
					self.revision += 1
				else
					self.revision = 1
				end
				return true
			else
				return false
			end
		end

		def decrement!(segment)
			if segment == :major then
				self.major -= 1
				if self.major < 0 then
					self.major = 0
				end
				return true
			elsif segment == :minor then
				self.minor -= 1
				if self.minor < 0 then
					self.minor = 0
				end
				return true
			elsif segment == :revision then
				if self.revision != nil then
					self.revision -= 1
					if self.revision < 0 then
						self.revision = 0
					end
				else
					self.revision = 0
				end
				return true
			else
				return false
			end
		end

		def to_s
			if @revision != nil then
				return "#{self.major}.#{self.minor}.#{self.revision}"
			else
				return "#{self.major}.#{self.minor}"
			end
		end

		def inspect
			self.to_s
		end
	end
end
