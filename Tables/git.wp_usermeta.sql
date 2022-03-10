CREATE TABLE [git].[wp_usermeta]
(
[umeta_id] [numeric] (20, 0) NOT NULL IDENTITY(18, 1),
[user_id] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_userme__user___18EBB532] DEFAULT ((0)),
[meta_key] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_userme__meta___19DFD96B] DEFAULT (NULL),
[meta_value] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__wp_userme__meta___1AD3FDA4] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_usermeta] ADD CONSTRAINT [PK_wp_usermeta_umeta_id] PRIMARY KEY CLUSTERED ([umeta_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [meta_key] ON [git].[wp_usermeta] ([meta_key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [git].[wp_usermeta] ([user_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_usermeta', 'SCHEMA', N'git', 'TABLE', N'wp_usermeta', NULL, NULL
GO
