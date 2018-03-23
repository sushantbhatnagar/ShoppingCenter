# Overridden Ledger Class
class Ledger
  def legder_hash
    {PAGES_VISTED: @pages_visited, FILLED_DATA: @filled_data}
  end
end
