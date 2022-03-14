CREATE TABLE [git].[wp_links]
(
[link_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[link_url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_u__605321AB] DEFAULT (N''),
[link_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_n__614745E4] DEFAULT (N''),
[link_image] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_i__623B6A1D] DEFAULT (N''),
[link_target] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_t__632F8E56] DEFAULT (N''),
[link_description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_d__6423B28F] DEFAULT (N''),
[link_visible] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_v__6517D6C8] DEFAULT (N'Y'),
[link_owner] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_links__link_o__660BFB01] DEFAULT ((1)),
[link_rating] [int] NOT NULL CONSTRAINT [DF__wp_links__link_r__67001F3A] DEFAULT ((0)),
[link_updated] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_links__link_u__67F44373] DEFAULT (getdate()),
[link_rel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__68E867AC] DEFAULT (N''),
[link_notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[link_rss] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__69DC8BE5] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_links] ADD CONSTRAINT [PK_wp_links_link_id] PRIMARY KEY CLUSTERED ([link_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_visible] ON [git].[wp_links] ([link_visible]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_links', 'SCHEMA', N'git', 'TABLE', N'wp_links', NULL, NULL
GO
