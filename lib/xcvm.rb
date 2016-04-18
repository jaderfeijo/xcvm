require_relative 'xcvm/version'
require_relative 'xcvm/project'
require_relative 'xcvm/semantic_version.rb'

module Xcvm
	class VersionManager
		def self.run(action, attribute, value = nil, path = nil)
			if path == nil then
				path = 'Info.plist'
			end

			if action == "print" then
				print attribute, path
			elsif action == "set" then
				set attribute, value, path
			elsif action == "bump" then
				increment attribute, path
			elsif action == "increment" then
				increment attribute, path
			elsif action == "decrement" then
				decrement attribute, path
			elsif action == nil then
				raise "Missing action"
			else
				raise "Invalid action '#{action}'"
			end
		end

		def self.print(attribute, path)
			project = Xcvm::Project.new(path)

			if attribute == "version" then
				puts project.version
			elsif attribute == "build" then
				puts project.build
			elsif attribute == nil then
				raise "Missing attribute"
			else
				raise "Invalid attribute '#{attribute}'"
			end
		end

		def self.set(attribute, value, path)
			project = Xcvm::Project.new(path)

			if attribute == "version" then
				project.version = Xcvm::SemanticVersion.new(value)
				project.save
				puts project.version
			elsif attribute == "major" then
				project.version.major = value.to_i
				project.save
				puts project.version
			elsif attribute == "minor" then
				project.version.minor = value.to_i
				project.save
				puts project.version
			elsif attribute == "revision" then
				project.revision = value.to_i
				project.save
				puts project.version
			elsif
				project.build = Xcvm::Build.new(value.to_i)
				project.save
				puts project.build
			elsif attribute == nil then
				raise "Missing attribute"
			else
				raise "Invalid attribute '#{attribute}'"
			end
		end

		def self.increment(attribute, path)
			project = Xcvm::Project.new(path)

			if attribute == "major" then
				project.version.increment! :major
				project.save
				puts project.version
			elsif attribute == "minor" then
				project.version.increment! :minor
				project.save
				puts project.version
			elsif attribute == "revision" then
				project.version.increment! :revision
				project.save
				puts project.version
			elsif attribute == "build" then
				project.build.increment!
				project.save
				puts project.build
			elsif attribute == nil then
				raise "Missing attribute"
			else
				raise "Invalid attribute '#{attribute}'"
			end

			
		end

		def self.decrement(attribute, path)
			project = Xcvm::Project.new(path)

			if attribute == "major" then
				project.version.decrement! :major
				project.save
				puts project.version
			elsif attribute == "minor" then
				project.version.decrement! :minor
				project.save
				puts project.version
			elsif attribute == "revision" then
				project.version.decrement! :revision
				project.save
				puts project.version
			elsif attribute == "build" then
				project.build.decrement!
				project.save
				puts project.build
			elsif attribute == nil then
				raise "Missing attribute"
			else
				raise "Invalid attribute '#{attribute}'"
			end
		end
	end
end
