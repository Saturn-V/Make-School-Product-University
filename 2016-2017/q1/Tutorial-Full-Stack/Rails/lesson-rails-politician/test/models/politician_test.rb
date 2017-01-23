require 'test_helper'

class PoliticianTest < ActiveSupport::TestCase
  def setup
    @hillary = Politician.new(name: "Hillary", party: "democrat")
  end

  test "can add staff" do
    robby = StaffPerson.new(name: "Robby Mook", politician: @hillary)
    robby.save

    assert_equal 1, @hillary.staff_people.size
  end

  test "can add bill" do
    bill = Bill.new(title: "National 10pm Cat Curfew")
    @hillary.bills << bill
    @hillary.save

    assert_equal 1, bill.politicians.size
  end
end
