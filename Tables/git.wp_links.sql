CREATE TABLE [git].[wp_links]
(
[link_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[link_url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_u__48DABF76] DEFAULT (N''),
[link_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_n__49CEE3AF] DEFAULT (N''),
[link_image] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_i__4AC307E8] DEFAULT (N''),
[link_target] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_t__4BB72C21] DEFAULT (N''),
[link_description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_d__4CAB505A] DEFAULT (N''),
[link_visible] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_v__4D9F7493] DEFAULT (N'Y'),
[link_owner] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_links__link_o__4E9398CC] DEFAULT ((1)),
[link_rating] [int] NOT NULL CONSTRAINT [DF__wp_links__link_r__4F87BD05] DEFAULT ((0)),
[link_updated] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_links__link_u__507BE13E] DEFAULT (getdate()),
[link_rel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__51700577] DEFAULT (N''),
[link_notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[link_rss] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__526429B0] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_links] ADD CONSTRAINT [PK_wp_links_link_id] PRIMARY KEY CLUSTERED ([link_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_visible] ON [git].[wp_links] ([link_visible]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_links', 'SCHEMA', N'git', 'TABLE', N'wp_links', NULL, NULL
GO
