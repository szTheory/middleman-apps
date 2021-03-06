Feature: Compatibility with other Extensions: AssetHash

  @production @javascript
  Scenario: Custom error page with AssetHash
    Given successfully built app is running at "asset_hash"
     When I go to "/unknown-app"
     Then the status code should be "404"
      And I should see text "404 - Not Found!"
      And I should not see text "Error"

  @production @javascript
  Scenario: Custom error page with AssetHash
    Given successfully built app is running at "asset_hash"
     When I go to "/unknown-app/some/deep/nested/url"
     Then the status code should be "404"
      And I should see text "404 - Not Found!"
      And I should not see text "Error"
