CREATE TABLE [dbo].[DeployLog] 
(      
   [DeployLogId]        INT IDENTITY (1, 1) NOT NULL
,  [BuildId]            NVARCHAR(50)
,  [BuildTag]           NVARCHAR(50) 
,  [DeployDatetime]     DATETIME2(0)
,  CONSTRAINT  PK_dboDeployLog PRIMARY KEY ([DeployDatetime]) 
) 