CREATE TABLE [majid].[wp_options]
(
[option_id] [numeric] (20, 0) NOT NULL IDENTITY(353, 1),
[option_name] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_option__optio__2D47B39A] DEFAULT (N''),
[option_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[autoload] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_option__autol__2E3BD7D3] DEFAULT (N'yes')
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_options] ADD CONSTRAINT [PK_wp_options_option_id] PRIMARY KEY CLUSTERED ([option_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [autoload] ON [majid].[wp_options] ([autoload]) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_options] ADD CONSTRAINT [wp_options$option_name] UNIQUE NONCLUSTERED ([option_name]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_options', 'SCHEMA', N'majid', 'TABLE', N'wp_options', NULL, NULL
GO
