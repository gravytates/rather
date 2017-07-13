module OptionHelper
  def vote_count(option)
    # option = Option.find(id)
    option.votes.count
  end
end
