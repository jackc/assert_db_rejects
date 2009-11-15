AssertDbRejects
===============

Test database level constraints with ActiveRecord.


Installation
============

The gem is hosted on http://gemcutter.org.

    config.gem 'assert_db_rejects'

Example
=======

    require 'test_helper'

    class PersonTest < ActiveSupport::TestCase
      
      test "database blocks duplicate names" do
        Person.create!( :name => "Test" )
        
        # Assume the people table has a not null constraint on name. The assertion
        # will pass if a ActiveRecord::StatementInvalid is raised when saving p.
        # Validations are bypassed by assert_db_rejects as the purpose is to test
        # the database and not the model
        assert_db_rejects( Person.new( :name => "Test" ) )
      end
    end

License
=======

Copyright (c) 2009 Jack Christensen, released under the MIT license
