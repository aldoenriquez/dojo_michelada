def rgb(*args)
  args.map { |color| "%02X" % color.clamp(0,255) }.join
end

print rgb(255,255,255)
print "\n"
print rgb(255,255,300)
print "\n"
print rgb(0,0,0)
print "\n"
print rgb(148, 0, 211)