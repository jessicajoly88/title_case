require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("damages").title_case()).to(eq("Damages"))
  end


  it("capitalizes the first letter of every word") do
    expect(("true detective").title_case()).to(eq("True Detective"))
  end

  it("does not capitalize designated words") do
    expect(("parks and recreation").title_case()).to(eq("Parks and Recreation"))
  end

  it("capitalizes designated words if first word") do
    expect(("and you will know us").title_case()).to(eq("And You Will Know Us"))
  end
end
