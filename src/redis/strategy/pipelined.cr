# Strategy for sending commands in pipelined mode.
#
# Used in Redis#pipelined.
#
class Redis::Strategy::Pipelined < Redis::Strategy::Base
  def begin
  end

  def command(request : Request)
    raise Redis::Error.new("We are in a pipelined block - call methods on the pipeline block argument instead of the Redis object")
  end

  def commit
  end

  def discard
  end
end