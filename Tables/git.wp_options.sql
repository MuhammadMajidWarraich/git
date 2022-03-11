CREATE TABLE [git].[wp_options]
(
[option_id] [numeric] (20, 0) NOT NULL IDENTITY(261, 1),
[option_name] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_option__optio__604834B3] DEFAULT (N''),
[option_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[autoload] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_option__autol__613C58EC] DEFAULT (N'yes')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_options] ADD CONSTRAINT [PK_wp_options_option_id] PRIMARY KEY CLUSTERED ([option_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [autoload] ON [git].[wp_options] ([autoload]) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_options] ADD CONSTRAINT [wp_options$option_name] UNIQUE NONCLUSTERED ([option_name]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_options', 'SCHEMA', N'git', 'TABLE', N'wp_options', NULL, NULL
GO
