AssertDbRejects
===============

Test database level constraints with ActiveRecord.


Installation
============

The gem is hosted on http://gemcutter.org.

    config.gem 'assert_db_rejects'

Example
=======

    # Assume the people table has a not null constraint on name. The assertion
    # will pass if a ActiveRecord::StatementInvalid is raised when saving p.
    # Validations are bypassed by assert_db_rejects as the purpose is to test
    # the database and not the model
    p = Person.new( :name => nil )
    assert_db_rejects(p)

License
=======    
    
Copyright (c) 2009 Jack Christensen, released under the MIT license
