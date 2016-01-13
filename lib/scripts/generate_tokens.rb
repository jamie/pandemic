out_dir = "./app/assets/images/token/"

Role.all.each do |role|
  puts role.name
  out_file = out_dir + role.name.gsub(/[^a-z]/i, '') + '.png'
  cmd = <<-CMD
  convert -size 300x400 \
    -fill \\#abcdef -draw 'color 0,0 reset' \
    xc: \
      -stroke Black -fill \\##{role.color} -strokewidth 7 \
      -draw 'polygon 5,395 295,395 150,50' \
      -draw 'translate 150,85 ellipse 0,0 80,80 121,59' \
    -transparent \\#abcdef \
    -resize 60x80 \
    #{out_file}
  CMD
  system(cmd)
end
