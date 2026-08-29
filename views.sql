USE Digilians;
GO


CREATE VIEW [dbo].[v_TraineePerformance]
AS

SELECT
    [t].[TraineeID],
    [t].[EnglishName],
    [t].[Gender],
    ISNULL([t].[University], 'Unknown') AS [University],
    ISNULL([t].[Faculty], 'Unknown') AS [Faculty],
    [t].[AcademicYear],
    [t].[IsActive],
    [l].[LabCode],
    [c].[CourseName],
    [c].[DurationHours],
    [i].[InstructorName],
    [e].[EnrollmentDate],
    [co].[StartDate],
    [co].[EndDate],

   
    ISNULL([g].[Attendance], 0) AS [Attendance],
    ISNULL([g].[Assignment], 0) AS [Assignment],
    ISNULL([g].[Project], 0) AS [Project],
    ISNULL([g].[MidExam], 0) AS [MidExam],
    ISNULL([g].[FinalExam], 0) AS [FinalExam],
    ISNULL([g].[Total], 0) AS [TotalScore],
    ISNULL([g].[GradeLetter], 'N/A') AS [GradeLetter]

FROM [dbo].[Trainees] AS [t]

INNER JOIN [dbo].[Labs] AS [l]
    ON [t].[LabID] = [l].[LabID]

INNER JOIN [dbo].[Enrollments] AS [e]
    ON [t].[TraineeID] = [e].[TraineeID]

INNER JOIN [dbo].[Grades] AS [g]
    ON [e].[EnrollmentID] = [g].[EnrollmentID]

INNER JOIN [dbo].[CourseOfferings] AS [co]
    ON [e].[OfferingID] = [co].[OfferingID]

INNER JOIN [dbo].[Courses] AS [c]
    ON [co].[CourseID] = [c].[CourseID]

INNER JOIN [dbo].[Instructors] AS [i]
    ON [co].[InstructorID] = [i].[InstructorID];



CREATE VIEW [dbo].[v_SessionAttendance]
AS

SELECT

    [t].[TraineeID],
    [t].[EnglishName],
    [t].[Gender],
    ISNULL([t].[University], 'Unknown') AS [University],
    ISNULL([t].[Faculty], 'Unknown') AS [Faculty],
    [t].[AcademicYear],
    [l].[LabCode],
    [c].[CourseName],
    [s].[SessionDate],
    [s].[Topic],

   
    ISNULL([a].[Status], 'Absent') AS [AttendanceStatus]

FROM [dbo].[Attendance] AS [a]

INNER JOIN [dbo].[Trainees] AS [t]
    ON [a].[TraineeID] = [t].[TraineeID]

INNER JOIN [dbo].[Sessions] AS [s]
    ON [a].[SessionID] = [s].[SessionID]

INNER JOIN [dbo].[CourseOfferings] AS [co]
    ON [s].[OfferingID] = [co].[OfferingID]

INNER JOIN [dbo].[Courses] AS [c]
    ON [co].[CourseID] = [c].[CourseID]

INNER JOIN [dbo].[Labs] AS [l]
    ON [co].[LabID] = [l].[LabID];


SELECT * FROM [dbo].[v_TraineePerformance];

SELECT * FROM [dbo].[v_SessionAttendance];

SELECT @@VERSION

