# This is the version that is on!

# def profile block_description, &block
#	start_time = Time.new
#	block.call
#	duration = Time.new - start_time
#	puts "#{block_description}: #{duration} seconds"
# end

# This is the version that is off!

def profile block_description, &block
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	"#{block_description}: #{duration} seconds"
end

