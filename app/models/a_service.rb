class AService
      attr_accessor :post, :comment


  def initialize(post, comment)
    @post = post
    @comment = comment
  end

  def exec
    Metric.for(comment: comment)
    Metric.for(post: post)
    puts "AService#exec"
    nil
  end
end