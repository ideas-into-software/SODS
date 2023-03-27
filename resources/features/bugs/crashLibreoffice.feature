Feature: Bugs related to loading a file generated by SODS in Excel

  Scenario: Excel crashes because the file "styles.xml" does not exist in the manifest file
    Given a sheet "A", size 3x3 and random data
    Given an empty Spreadsheet
    When the client appends the sheet contained in World.sheet
    And save the spreadsheet in the memory
    And gets the "META-INF/manifest.xml" entry in the spreadsheet saved in the memory
    Then the file "styles.xml" is present in the manifest file