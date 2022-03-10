CREATE TABLE [git].[wpstg0_options]
(
[option_id] [numeric] (20, 0) NOT NULL IDENTITY(218, 1),
[option_name] [nvarchar] (191) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_op__optio__347EC10E] DEFAULT (N''),
[option_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[autoload] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_op__autol__3572E547] DEFAULT (N'yes')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_options] ADD CONSTRAINT [PK_wpstg0_options_option_id] PRIMARY KEY CLUSTERED ([option_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [autoload] ON [git].[wpstg0_options] ([autoload]) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_options] ADD CONSTRAINT [wpstg0_options$option_name] UNIQUE NONCLUSTERED ([option_name]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_options', 'SCHEMA', N'git', 'TABLE', N'wpstg0_options', NULL, NULL
GO
