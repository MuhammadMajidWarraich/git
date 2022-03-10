CREATE TABLE [git].[wp_yoast_migrations]
(
[id] [bigint] NOT NULL IDENTITY(24, 1),
[version] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_yoast___versi__0B7CAB7B] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_yoast_migrations] ADD CONSTRAINT [PK_wp_yoast_migrations_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_yoast_migrations] ADD CONSTRAINT [wp_yoast_migrations$wp_yoast_migrations_version] UNIQUE NONCLUSTERED ([version]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_yoast_migrations', 'SCHEMA', N'git', 'TABLE', N'wp_yoast_migrations', NULL, NULL
GO
