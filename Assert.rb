class AssertError < RuntimeError; end


def assert(test, msg = nil)
  if test
    true
  else
    raise AssertError, msg
  end

end
