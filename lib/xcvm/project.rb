require 'plist'

require_relative 'version'
require_relative 'build'

module Xcvm
	class Project
		attr_reader :file

		def initialize(file)
			@file = file
		end

		def version
			if @version == nil then
				@version = Xcvm::SemanticVersion.new(info['CFBundleShortVersionString'])
			end
			return @version
		end

		def version=(value)
			@version = value
		end

		def build
			if @build == nil then
				@build = Xcvm::Build.new(info['CFBundleVersion'].to_i)
			end
			return @build
		end

		def build=(value)
			@build = value
		end
		
		def save
			info['CFBundleShortVersionString'] = version.to_s
			info['CFBundleVersion'] = build.to_s
			File.open(@file, 'w') { |file| file.write(info.to_plist) }
		end

		private
		def info
			if @info == nil then
				@info = Plist::parse_xml(@file)
			end
			return @info
		end
	end
end
