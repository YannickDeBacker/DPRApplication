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
    2. SwitchProjectButton -> should link to other projects account has access to
    3. SwitchToSideMenuButton
    4. DataLoggingButton
    5. OverviewActivityButton
    6. PerfomanceButton
    7. ReportingButton
    8. SetUpButton

3. PreData Logging TableVC -> done
    1. OperationMCButton
    2. StartDataLoggingButton

4. Data logging VC
    1. CurrentOperationLabel DONE
    2. CurrentActivityLabel DONE
    3. StartTimeLabel DONE
	-> should list end time of last activity
    4. EditStartTimeLabel 
    	-> should be able to edit the StarTime of this activity by means op pop-up for time, with additional pop-up mentioning StopTime of previous Activity will be aligned
    6. DurationLabel -> continuously counting up
    7. TakePictureButton -> opensCamera or Gallery
    8. CommentArea
    9. MakeCommentButton
    10. NextActityLogicalButton DONE
	-> should bring up pop-up with confirmation NOT DONE
	-> should link to new DataLogging DONE
    10. NextActivityChoiceButton DONE
	-> should bring up option menu of possible activities DONE
	-> should link to new  DataLogging + save info DONE
    11. OverviewActivityButton
	-> should open pop-up: option A: continue recording this activity option B: leave and delete activity 
	-> should go to OverviewActivityVC with ChosenOperation = CurrentOperation
    12. SwitchtoSideListButton
	-> should go to side
	-> in case button is pressed, pop-up should open asking:
		option A: continue recording this activity 
		option B: leave and delete activity

4. PreOverviewActivityVC
    1. OperationMCButton -> chose to be recorded as ChosenOperation

5. OverviewActivityVC
    1. ShownOperationLabel -> to be mentioning ChosenOperationLabel from SelectOverviewActivityVC
    2. ActivityTableView -> activity, start time, end time to be listed -> in case activity is selected, comment and presence of picture to be mentioned -> in case chosen to edit, info can be amended -> DataLoggingVC

4. Performance VC


5. Reporting VC DPR Reporting
    1. OperationMC
    2. SelectDayMC
    3. CreateReportButton -> once finished 4. DownloadButton 5. ShareButton 6. MailButton
	DataReporting

6. Set-up VC
    1. ProjectInfoButton
    2. VesselorSiteInfo

7. ProjectInfoVC
        1. ImportXLButton


Classes
- Account
    - Person name
    - Person function
    - AccessibleProjects
- Project
    - Operations
- ActivityRecord
    - ParentActivityName
    - ActivityName
    - ActivityStartTime
    - ActivityEndTime
    - ActivityDuration
    - ActivityComment
    - ActivityPicture
    - ActivityRunningBoolean -> should provide info activity is currently running or not (to distinguish live and record DataLoggingVC
- Activity
- 


Excelfile:

a. ProjectName
b. ProjectCode
c. Operation
d. ParentActivity
e. Activity
f.  ActivityEstimatedStartTime
g. ActivityEstimatedEndTime
h. ActivityEstimatedDuration



+++++
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
