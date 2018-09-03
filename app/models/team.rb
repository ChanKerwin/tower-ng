# frozen_string_literal: true

# Team.
class Team < ApplicationRecord
  include Hashid::Rails

  has_many :team_admins
  has_many :users, through: :team_admins

  has_many :projects, dependent: :destroy
end
