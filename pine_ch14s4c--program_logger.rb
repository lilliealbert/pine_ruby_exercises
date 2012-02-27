def log block_description, &block
  puts "Beginning #{block_description}."
  return_value = block.call
  puts "#{block_description} complete, returning:"
  puts return_value
end

log "coyote song" do
  log "cat talk" do
    meows = "meow! " * 5
  end
  howls = "howl! " * 5
end

