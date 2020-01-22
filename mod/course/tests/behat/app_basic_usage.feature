@mod @mod_course @app @javascript
Feature: Test basic usage of one course in app
  In order to participate in one course while using the mobile app
  As a student
  I need basic courses functionality to work

  Background:
    Given the following "users" exist:
      | username | firstname | lastname | email |
      | teacher1 | Teacher | teacher | teacher1@example.com |
      | student1 | Student | student | student1@example.com |

    And the following "courses" exist:
      | fullname | shortname | category |
      | Course 1 | C1 | 0 |

    And the following "course enrolments" exist:
      | user | course | role |
      | teacher1 | C1 | editingteacher |
      | student1 | C1 | student |

    And the following "activities" exist:
      | activity | name            | intro                   | course | idnumber | option                       | section |
      | choice   | Choice course 1 | Test choice description | C1     | choice1  | Option 1, Option 2, Option 3 | 1       |

    And the following "activities" exist:
      | activity | course | idnumber | name                | intro                       | assignsubmission_onlinetext_enabled | section |
      | assign   | C1     | assign1  | assignment          | Test assignment description | 1                                   | 1       |

    And the following "activities" exist:
      | activity   | name            | intro       | course | idnumber | groupmode | assessed | scale[modgrade_type] |
      | forum      | Test forum name | Test forum  | C1     | forum    | 0         | 5        | Point                |

    And the following "activities" exist:
      | activity   | name            | intro       | course | idnumber | groupmode | section |
      | chat       | Test chat name  | Test chat   | C1     | chat     | 0         | 2       |

    And the following "activities" exist:
      | activity | name      | intro        | course | idnumber | section |
      | data     | Web links | Useful links | C1     | data1    | 4       |

    And the following "activities" exist:
      | activity      | name               | intro          | course | idnumber    | groupmode | section |
      | lti           | Test external name | Test external  | C1     | external    | 0         | 1       |

    And the following "activities" exist:
      | activity      | name               | intro          | course | idnumber    | groupmode | section |
      | feedback      | Test feedback name | Test feedback  | C1     | feedback    | 0         | 3       |

    And the following "activities" exist:
      | activity | name          | intro                | course | idnumber  | section |
      | glossary | Test glossary | glossary description | C1     | gloss1    | 5       |

    And the following "activities" exist:
      | activity   | name   | intro              | course | idnumber | section |
      | quiz       | Quiz 1 | Quiz 1 description | C1     | quiz1    | 2       |
    And the following "question categories" exist:
      | contextlevel | reference | name           |
      | Course       | C1        | Test questions |
    And the following "questions" exist:
      | questioncategory | qtype       | name  | questiontext                | 
      | Test questions   | truefalse   | TF1   | Text of the first question  |
      | Test questions   | truefalse   | TF2   | Text of the second question |
    And quiz "Quiz 1" contains the following questions:
      | question | page |
      | TF1      | 1    |
      | TF2      | 2    |

    And the following "activities" exist:
      | activity    | name             | intro        | course | idnumber  | groupmode | section |
      | survey      | Test survey name | Test survey  | C1     | survey    | 0         | 1       |

    And the following "activities" exist:
      | activity    | name             | intro        | course | idnumber  | groupmode |
      | wiki        | Test wiki name   | Test wiki    | C1     | wiki      | 0         |

    And the following "activities" exist:
      | activity      | name               | intro          | course | idnumber    | groupmode | section |
      | lesson        | Test lesson name   | Test lesson    | C1     | lesson      | 0         | 3       |

    And the following "activities" exist:
      | activity      | name               | intro          | course | idnumber    | groupmode | section |
      | scorm         | Test scorm name    | Test scorm     | C1     | scorm       | 0         | 2       |

    And the following "activities" exist:
      | activity      | name                  | intro             | course | idnumber       | groupmode | section |
      | workshop      | Test workshop name    | Test workshop     | C1     | workshop       | 0         | 3       |

  @app @3.8.0 @OK
  Scenario: Student views course contents
  When I enter the app
  And I log in as "student1"
  Then the header should be "Acceptance test site" in the app 
  And I should see "Course 1"
  And I press "Course 1" near "Recently accessed courses" in the app
  Then the header should be "Course 1" in the app
  And I should see "Choice course 1"
  And I should see "assignment"
  And I should see "Test forum name"
  And I should see "Test chat name"
  And I should see "Web links"
  And I should see "Test external name"
  And I should see "Test feedback name"
  And I should see "Test glossary"
  And I should see "Quiz 1"
  And I should see "Test survey name"
  And I should see "Test wiki name"
  And I should see "Test lesson name"
  And I should see "Test scorm name"
  And I should see "Test workshop name"
  And I press "Choice course 1" in the app
  Then the header should be "Choice course 1" in the app
  And I press the back button in the app
  And I press "assignment" in the app
  Then the header should be "assignment" in the app
  And I press the back button in the app
  And I press "Test forum name" in the app
  Then the header should be "Test forum name" in the app
  And I press the back button in the app
  And I press "Test chat name" in the app
  Then the header should be "Test chat name" in the app
  And I press the back button in the app
  And I press "Web links" in the app
  Then the header should be "Web links" in the app
  And I press the back button in the app
  And I press "Test external name" in the app
  Then the header should be "Test external name" in the app
  And I press the back button in the app
  And I press "Test feedback name" in the app
  And I press "OK" in the app
  Then the header should be "Test feedback name" in the app
  And I press the back button in the app
  And I press "Test glossary" in the app
  Then the header should be "Test glossary" in the app
  And I press the back button in the app
  And I press "Quiz 1" in the app
  Then the header should be "Quiz 1" in the app
  And I press the back button in the app
  And I press "Test survey name" in the app
  Then the header should be "Test survey name" in the app
  And I press the back button in the app
  And I press "Test wiki name" in the app
  And I press "OK" in the app
  Then the header should be "Test wiki name" in the app
  And I press the back button in the app
  And I press "Test lesson name" in the app
  Then the header should be "Test lesson name" in the app
  And I press the back button in the app
  And I press "Test scorm name" in the app
  Then the header should be "Test scorm name" in the app
  And I press the back button in the app
  And I press "Test workshop name" in the app
  Then the header should be "Test workshop name" in the app
  And I press the back button in the app

  @app @3.8.0 @OK
  Scenario: Student views section contents
  When I enter the app
  And I log in as "student1"
  Then the header should be "Acceptance test site" in the app 
  And I should see "Course 1"
  And I press "Course 1" near "Recently accessed courses" in the app
  Then the header should be "Course 1" in the app
  And I should see "Choice course 1"
  And I should see "assignment"
  And I should see "Test forum name"
  And I should see "Test chat name"
  And I should see "Web links"
  And I should see "Test external name"
  And I should see "Test feedback name"
  And I should see "Test glossary"
  And I should see "Quiz 1"
  And I should see "Test survey name"
  And I should see "Test wiki name"
  And I should see "Test lesson name"
  And I should see "Test scorm name"
  And I should see "Test workshop name"
  And I press "arrow dropdown" in the app
  And I press "General" near "Sections" in the app
  Then I should not see "Choice course 1"
  And I should not see "assignment"
  And I should see "Test forum name"
  And I should not see "Test chat name"
  And I should not see "Web links"
  And I should not see "Test external name"
  And I should not see "Test feedback name"
  And I should not see "Test glossary"
  And I should not see "Quiz 1"
  And I should not see "Test survey name"
  And I should see "Test wiki name"
  And I should not see "Test lesson name"
  And I should not see "Test scorm name"
  And I should not see "Test workshop name"
  And I press "Test forum name" in the app
  Then the header should be "Test forum name" in the app
  And I press the back button in the app
  And I press "Test wiki name" in the app
  And I press "OK" in the app
  Then the header should be "Test wiki name" in the app
  And I press the back button in the app
  And I press "arrow dropdown" in the app
  And I press "Topic 1" near "Sections" in the app
  Then I should see "Choice course 1"
  And I should see "assignment"
  And I should not see "Test forum name"
  And I should not see "Test chat name"
  And I should not see "Web links"
  And I should see "Test external name"
  And I should not see "Test feedback name"
  And I should not see "Test glossary"
  And I should not see "Quiz 1"
  And I should see "Test survey name"
  And I should not see "Test wiki name"
  And I should not see "Test lesson name"
  And I should not see "Test scorm name"
  And I should not see "Test workshop name"
  And I press "Choice course 1" in the app
  Then the header should be "Choice course 1" in the app
  And I press the back button in the app
  And I press "assignment" in the app
  Then the header should be "assignment" in the app
  And I press the back button in the app
  And I press "Test external name" in the app
  Then the header should be "Test external name" in the app
  And I press the back button in the app
  And I press "Test survey name" in the app
  Then the header should be "Test survey name" in the app
  And I press the back button in the app
  And I press "arrow dropdown" in the app
  And I press "Topic 2" near "Sections" in the app
  Then I should not see "Choice course 1"
  And I should not see "assignment"
  And I should not see "Test forum name"
  And I should see "Test chat name"
  And I should not see "Web links"
  And I should not see "Test external name"
  And I should not see "Test feedback name"
  And I should not see "Test glossary"
  And I should see "Quiz 1"
  And I should not see "Test survey name"
  And I should not see "Test wiki name"
  And I should not see "Test lesson name"
  And I should see "Test scorm name"
  And I should not see "Test workshop name"
  And I press "Test chat name" in the app
  Then the header should be "Test chat name" in the app
  And I press the back button in the app
  And I press "Quiz 1" in the app
  Then the header should be "Quiz 1" in the app
  And I press the back button in the app
  And I press "Test scorm name" in the app
  Then the header should be "Test scorm name" in the app
  And I press the back button in the app
  And I press "arrow dropdown" in the app
  And I press "Topic 3" near "Sections" in the app
  Then I should not see "Choice course 1"
  And I should not see "assignment"
  And I should not see "Test forum name"
  And I should not see "Test chat name"
  And I should not see "Web links"
  And I should not see "Test external name"
  And I should see "Test feedback name"
  And I should not see "Test glossary"
  And I should not see "Quiz 1"
  And I should not see "Test survey name"
  And I should not see "Test wiki name"
  And I should see "Test lesson name"
  And I should not see "Test scorm name"
  And I should see "Test workshop name"
  And I press "Test feedback name" in the app
  And I press "OK" in the app
  Then the header should be "Test feedback name" in the app
  And I press the back button in the app
  And I press "Test lesson name" in the app
  Then the header should be "Test lesson name" in the app
  And I press the back button in the app
  And I press "Test workshop name" in the app
  Then the header should be "Test workshop name" in the app
  And I press the back button in the app
  And I press "arrow dropdown" in the app
  And I press "Topic 4" near "Sections" in the app
  Then I should not see "Choice course 1"
  And I should not see "assignment"
  And I should not see "Test forum name"
  And I should not see "Test chat name"
  And I should see "Web links"
  And I should not see "Test external name"
  And I should not see "Test feedback name"
  And I should not see "Test glossary"
  And I should not see "Quiz 1"
  And I should not see "Test survey name"
  And I should not see "Test wiki name"
  And I should not see "Test lesson name"
  And I should not see "Test scorm name"
  And I should not see "Test workshop name"
  And I press "Web links" in the app
  Then the header should be "Web links" in the app
  And I press the back button in the app
  And I press "arrow dropdown" in the app
  And I press "Topic 5" near "Sections" in the app
  Then I should not see "Choice course 1"
  And I should not see "assignment"
  And I should not see "Test forum name"
  And I should not see "Test chat name"
  And I should not see "Web links"
  And I should not see "Test external name"
  And I should not see "Test feedback name"
  And I should see "Test glossary"
  And I should not see "Quiz 1"
  And I should not see "Test survey name"
  And I should not see "Test wiki name"
  And I should not see "Test lesson name"
  And I should not see "Test scorm name"
  And I should not see "Test workshop name"
  And I press "Test glossary" in the app
  Then the header should be "Test glossary" in the app
  And I press the back button in the app
  
  @app @3.8.0 @OK
  Scenario: Navigation between sections using the bottom arrows
  When I enter the app
  And I log in as "student1"
  Then the header should be "Acceptance test site" in the app 
  And I should see "Course 1"
  And I press "Course 1" near "Recently accessed courses" in the app
  Then the header should be "Course 1" in the app
  And I should see "Choice course 1"
  And I should see "assignment"
  And I should see "Test forum name"
  And I should see "Test chat name"
  And I should see "Web links"
  And I should see "Test external name"
  And I should see "Test feedback name"
  And I should see "Test glossary"
  And I should see "Quiz 1"
  And I should see "Test survey name"
  And I should see "Test wiki name"
  And I should see "Test lesson name"
  And I should see "Test scorm name"
  And I should see "Test workshop name"
  And I press "arrow dropdown" in the app
  And I press "General" near "Sections" in the app
  Then I should see "General"
  And I should not see "Topic 1"
  And I should not see "Topic 2"
  And I should not see "Topic 3"
  And I should not see "Topic 4"
  And I should not see "Topic 5"
  And I press "arrow forward" near "Test wiki name" in the app
  Then I should not see "General"
  And I should see "Topic 1"
  And I should not see "Topic 2"
  And I should not see "Topic 3"
  And I should not see "Topic 4"
  And I should not see "Topic 5"
  And I press "arrow forward" near "Test survey name" in the app
  Then I should not see "General"
  And I should not see "Topic 1"
  And I should see "Topic 2"
  And I should not see "Topic 3"
  And I should not see "Topic 4"
  And I should not see "Topic 5"
  And I press "arrow forward" near "Test scorm name" in the app
  Then I should not see "General"
  And I should not see "Topic 1"
  And I should not see "Topic 2"
  And I should see "Topic 3"
  And I should not see "Topic 4"
  And I should not see "Topic 5"
  And I press "arrow forward" near "Test workshop name" in the app
  Then I should not see "General"
  And I should not see "Topic 1"
  And I should not see "Topic 2"
  And I should not see "Topic 3"
  And I should see "Topic 4"
  And I should not see "Topic 5"
  And I press "arrow forward" near "Web links" in the app
  Then I should not see "General"
  And I should not see "Topic 1"
  And I should not see "Topic 2"
  And I should not see "Topic 3"
  And I should not see "Topic 4"
  And I should see "Topic 5"
  And I press "arrow back" near "Test glossary" in the app
  Then I should not see "General"
  And I should not see "Topic 1"
  And I should not see "Topic 2"
  And I should not see "Topic 3"
  And I should see "Topic 4"
  And I should not see "Topic 5"