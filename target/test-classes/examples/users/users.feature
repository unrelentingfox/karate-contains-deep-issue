Feature:

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario:
    * def actual =
      """
      {
        "person": {
          "hobbies": [{
            "name":"basketball",
            "equipment":[
              "basketball",
              "shoes",
              "jersey"
            ]
          }]
        }
      }
      """
    * def expected =
      """
      {
        "person": {
          "hobbies": [{
            "name":"basketball",
            "equipment":[
              "shoes",
              "jersey"
            ]
          }]
        }
      }
      """
    Then match actual contains deep expected
