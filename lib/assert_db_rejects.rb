require 'test/unit'

module AssertDbRejects
  VERSION = '0.1.0'

  # passes if saving r without validations raises an exception from the database
  def assert_db_rejects(r, message="")
    assert_raise( ActiveRecord::StatementInvalid, message ) do
      r.save(false)
    end
  end
end

Test::Unit::TestCase.send :include, AssertDbRejects