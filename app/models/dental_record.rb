class DentalRecord
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # Simulate fetching data from a database
  def self.all
    [
      new("Demo DELTA DENTAL PPO"),
      new("Demo MetLife Provider Application"),
      new("Demo Safeguard MetLife HMO SP")
    ]
  end

  # Simulate Ransack-like search with case-insensitive matching
  def self.ransack(query)
    return all if query[:name_cont].blank?

    # Normalize the search term to lowercase for comparison
    search_term = query[:name_cont].downcase
    all.select { |record| record.name.downcase.include?(search_term) }
  end
end