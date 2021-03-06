#
# Cookbook Name:: posix_acl
# Resource:: default
#
# Copyright 2013, Pal David Gergely
#
# Apache License 2.0
#

require 'pathname'

actions :create, :check
default_action :create

attribute :path, :name_attribute => true, :kind_of => String, :required => true

attribute :user       , :kind_of => String, :default => ''
attribute :group      , :kind_of => String, :default => ''
attribute :read       , :kind_of => [ TrueClass, FalseClass ], :default => true
attribute :write      , :kind_of => [ TrueClass, FalseClass ], :default => false
attribute :execute    , :kind_of => [ TrueClass, FalseClass ], :default => true
attribute :default    , :kind_of => [ TrueClass, FalseClass ], :default => false
attribute :recursive  , :kind_of => [ TrueClass, FalseClass ], :default => false

attr_accessor :exists
