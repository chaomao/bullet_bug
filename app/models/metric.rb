class Metric
    def self.for(options = {})
    options[:post] ||= options[:comment]&.post
    options[:comment] ||= options[:post]&.comments&.first
    puts "Metric#for"
  end
end