# Overriden Select List Element
class SelectListElement < CoreElement
  def fill(data)
    assert_active
    @world.logger.action "Filling [#{@name}] with [#{data}]"
    watir_element.select(data)
    begin
      Watir::Wait.until(timeout: 1){watir_element.selected?(data)}
    rescue
      raise "ERROR: Problem filling element [#{@name}] with [#{data}] value after fill was found as [#{watir_element.value}]"
    end
    @world.ledger.record_fill(@name, data)
    super
  end
end