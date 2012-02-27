$nesting_depth = 0

def log block_description, &block
  indent = "   "
  puts indent*$nesting_depth + "Beginning #{block_description}."
  $nesting_depth += 1
  return_value = block.call
  $nesting_depth -= 1
  puts indent*$nesting_depth + "#{block_description} complete, returning:"
  puts indent*$nesting_depth + return_value
end

log "coyote song" do
  log "cat talk" do
    log "fish bloop" do
      bloop = "bloop! "*5
    end
    meows = "meow! " * 5
  end
  howls = "howl! " * 5
end