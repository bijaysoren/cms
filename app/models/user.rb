class User < ActiveRecord::Base

	has_and_belongs_to_many :pages

	ROLES = %w[admin moderator author banned].freeze

	def roles=(roles)
  		self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
	end

	def roles
  		ROLES.reject do |r|
    		((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
  		end
	end

	def is?(role)
  		roles.include?(role.to_s)
	end

end
