class Chisel
  def self.to_html(markdown)
    chunk = markdown
    binding.pry 
    if header?(chunk)
      to_header(chunk)
    end
  end

  def self.header?(chunk)
    chunk[0] == '#'
  end

  def self.to_header(chunk)
  end
end

im_running_this_file = ($PROGRAM_NAME == __FILE__)

if im_running_this_file
  input_file = ARGV[0]
  output_file = ARGV[1]

  markdown = File.read(input_file)
  html = Chisel.to_html(markdown)

  puts "Converted #{input_file} (#{markdown.lines.count} lines) to #{output_file} (#{html.lines.count} lines)"
end
