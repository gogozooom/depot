require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
    test "check dynamic fields" do
        visit store_index_url

        puts "Click on 'Add to Cart'"

        click_on "Add to Cart", match: :first

        puts "Click on 'Checkout'"

        click_on "Checkout"

        assert has_no_field? "Routing number"
        assert has_no_field? "Account number"
        assert has_no_field? "Credit card number"
        assert has_no_field? "Expiration date"
        assert has_no_field? "Po number"

        puts "Click on 'Check'"

        select "Check", from: "Pay type"

        assert has_field? "Routing number"
        assert has_field? "Account number"
        assert has_no_field? "Credit card number"
        assert has_no_field? "Expiration date"
        assert has_no_field? "Po number"

        puts "Click on 'Credit card'"

        select "Credit card", from: "Pay type"

        assert has_no_field? "Routing number"
        assert has_no_field? "Account number"
        assert has_field? "Credit card number"
        assert has_field? "Expiration date"
        assert has_no_field? "Po number"

        puts "Click on 'Purchase order'"

        select "Purchase order", from: "Pay type"

        assert has_no_field? "Routing number"
        assert has_no_field? "Account number"
        assert has_no_field? "Credit card number"
        assert has_no_field? "Expiration date"
        assert has_field? "Po number"
    end
end