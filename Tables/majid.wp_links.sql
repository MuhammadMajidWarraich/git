CREATE TABLE [majid].[wp_links]
(
[link_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[link_url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_u__22CA2527] DEFAULT (N''),
[link_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_n__23BE4960] DEFAULT (N''),
[link_image] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_i__24B26D99] DEFAULT (N''),
[link_target] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_t__25A691D2] DEFAULT (N''),
[link_description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_d__269AB60B] DEFAULT (N''),
[link_visible] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_v__278EDA44] DEFAULT (N'Y'),
[link_owner] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wp_links__link_o__2882FE7D] DEFAULT ((1)),
[link_rating] [int] NOT NULL CONSTRAINT [DF__wp_links__link_r__297722B6] DEFAULT ((0)),
[link_updated] [datetime2] (0) NOT NULL CONSTRAINT [DF__wp_links__link_u__2A6B46EF] DEFAULT (getdate()),
[link_rel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__2B5F6B28] DEFAULT (N''),
[link_notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[link_rss] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wp_links__link_r__2C538F61] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_links] ADD CONSTRAINT [PK_wp_links_link_id] PRIMARY KEY CLUSTERED ([link_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_visible] ON [majid].[wp_links] ([link_visible]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_links', 'SCHEMA', N'majid', 'TABLE', N'wp_links', NULL, NULL
GO
