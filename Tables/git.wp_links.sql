CREATE TABLE [git].[wp_links]
(
[link_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[link_url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_u__3BEAD8AC] DEFAULT (N''),
[link_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_n__3CDEFCE5] DEFAULT (N''),
[link_image] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_i__3DD3211E] DEFAULT (N''),
[link_target] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_t__3EC74557] DEFAULT (N''),
[link_description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_d__3FBB6990] DEFAULT (N''),
[link_visible] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_v__40AF8DC9] DEFAULT (N'Y'),
[link_owner] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_links__link_o__41A3B202] DEFAULT ((1)),
[link_rating] [int] NOT NULL CONSTRAINT [DF__wp_links__link_r__4297D63B] DEFAULT ((0)),
[link_updated] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_links__link_u__438BFA74] DEFAULT (getdate()),
[link_rel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__44801EAD] DEFAULT (N''),
[link_notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[link_rss] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__457442E6] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_links] ADD CONSTRAINT [PK_wp_links_link_id] PRIMARY KEY CLUSTERED ([link_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_visible] ON [git].[wp_links] ([link_visible]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_links', 'SCHEMA', N'git', 'TABLE', N'wp_links', NULL, NULL
GO
