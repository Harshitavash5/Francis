class Francis
  attr_accessor :query
  def new; end

  def yo(query)
    @query = query
    response = if question? && (not_upcase? || numeric?)
                 'Sure.'
               elsif upcase? && not_empty? && alphabets?
                 'Chill!'
               elsif empty?
                 'See if I care!'
               else
                 'Whatevs.'
               end
    response
  end

  private

  def alphabets?
    query.count('a-zA-Z') > 0
  end

  def question?
    query.split('').last == '?'
  end

  def numeric?
    query.count('a-zA-Z').zero?
  end

  def upcase?
    query == query.upcase
  end

  def not_upcase?
    !upcase?
  end

  def empty?
    query.strip.empty?
  end

  def not_empty?
    !empty?
  end
end
