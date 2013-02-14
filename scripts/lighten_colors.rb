def lighten(rgb_array, percentage)
  rgb_array.map do |color|
    lightened = ->(c) { [c + 255 * percentage].min.round }
    lightened.(color) > 255 ? 255 : lightened.(color)
  end
end

colors = {
  black:   [163, 163, 163],
  red:     [236, 135, 135],
  green:   [163, 196, 145],
  blue:    [151, 190, 220],
  magenta: [225, 192, 250],
  cyan:    [0, 152, 142],
}

puts "All colors lightened by 10%:"
colors.each do |key, value|
  puts "#{key}: #{lighten(value, 0.10)}"
end
