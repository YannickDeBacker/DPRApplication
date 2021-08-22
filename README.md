# DPRApplication
Application to record data for daily reporting


DPR App Notes


1. SideMenuVC
    1. Account
    2. Settings
    3. Help
    4. Log-out

2. Main VC
    1. CurrentProjectButton
    2. SwitchProjectButton -> should link to other projects
    3. SwitchToSideMenuButton
    4. DataLoggingButton
    5. PerfomanceButton
    6. ReportingButton
    7. SetUpButton

3. Data logging VC
    1. CurrentActivityLabel
    2. StartTimeLabel -> should list end time of last activity
    3. DurationLabel
    4. NextActityLogicalButton -> should link to new DataLogging
    5. NextActivityChoiceButton
    6. SwitchtoSideListButton -> should go to side


4. Performance VC


5. Reporting VC


6. Set-up


Classes
- Account
- Project
- ActivityRecord
    - ParentActivityName
    - ActivityName
    - ActivityStartTime
    - ActivityEndTime
    - ActivityDuration
    - ActivityComment
    - ActivityPicture
    - 
- Activity
