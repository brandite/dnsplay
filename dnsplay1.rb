require 'dnsruby'
include Dnsruby

res = Resolver.new

puts " ---- "
puts "Notice that this laptop knows of two resolvers:"
res.single_resolvers.each do |s|
	puts "Server: #{s.server}"
end

puts " ---- "
puts "Notice we can ask it what the IP address of brandeis.edu is"
puts res.query("brandeis.edu").answer

puts " ---- "
puts "What are all the A records that Brandeis has?"
puts res.query("brandeis.edu", "A").answer

puts " ---- "
puts "Now lets look at Brandeis' MX records"
puts res.query("brandeis.edu", "MX").answer

puts " ---- "
puts "Just for fun, let's figure out IP address that runs mail server"
puts res.query("alba.unet.brandeis.edu").answer

puts " ---- "
puts "What happens when we ask about something outside of this domain?"
puts res.query("salas.com", "A")

puts " ---- "
puts "And asking the same question from a recursor:"
rec = Recursor.new
ret = rec.query("salas.com", "A")
puts ret
