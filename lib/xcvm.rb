require_relative 'xcvm/version'
require_relative 'xcvm/project'
require_relative 'xcvm/semantic_version.rb'

module Xcvm
	class VersionManager
		def self.run(action, attribute, segment = nil, value = nil)
			if action == "print" then
				if attribute != nil then
					print(attribute)
				else
					raise "Invalid attribute '#{attribute}'"
				end
			elsif action == "set" then
			elsif action == "bump" then
			elsif action == "increment" then
			elsif action == "decrement" then
			else
			end
		end

		def self.print(attribute)
			project = Xcvm::Project.new('Info.plist') 
			if attribute == "version" then
				puts project.version
			elsif attribute == "build" then
				puts project.build
			end
		end
	end
end
