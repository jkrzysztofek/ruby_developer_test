class Parser
  def parse_logfile(file_path)
    file = File.readlines(file_path)
    urls = []
    file.each do |line|
      url = line.gsub(/\s+/m, ' ').strip.split(' ').first
      urls << url
    end

    counts = Hash.new(0)
    urls.each do |url|
      counts[url] += 1
    end
    counts.sort_by { |_key, value| value }.to_a.reverse.to_h
  end
end
