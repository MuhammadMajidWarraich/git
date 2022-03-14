CREATE TABLE [majid].[wp_usermeta]
(
[umeta_id] [numeric] (20, 0) NOT NULL IDENTITY(22, 1),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_userme__user___77168B72] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_userme__meta___780AAFAB] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_userme__meta___78FED3E4] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_usermeta] ADD CONSTRAINT [PK_wp_usermeta_umeta_id] PRIMARY KEY CLUSTERED ([umeta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [majid].[wp_usermeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [majid].[wp_usermeta] ([user_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_usermeta', 'SCHEMA', N'majid', 'TABLE', N'wp_usermeta', NULL, NULL
GO
