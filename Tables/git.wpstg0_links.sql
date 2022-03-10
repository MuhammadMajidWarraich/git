CREATE TABLE [git].[wpstg0_links]
(
[link_id] [numeric] (20, 0) NOT NULL IDENTITY(1, 1),
[link_url] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___4262CC11] DEFAULT (N''),
[link_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___4356F04A] DEFAULT (N''),
[link_image] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___444B1483] DEFAULT (N''),
[link_target] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___453F38BC] DEFAULT (N''),
[link_description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___46335CF5] DEFAULT (N''),
[link_visible] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___4727812E] DEFAULT (N'Y'),
[link_owner] [numeric] (20, 0) NOT NULL CONSTRAINT [DF__wpstg0_li__link___481BA567] DEFAULT ((1)),
[link_rating] [int] NOT NULL CONSTRAINT [DF__wpstg0_li__link___490FC9A0] DEFAULT ((0)),
[link_updated] [datetime2] (0) NOT NULL CONSTRAINT [DF__wpstg0_li__link___4A03EDD9] DEFAULT (getdate()),
[link_rel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___4AF81212] DEFAULT (N''),
[link_notes] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[link_rss] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__wpstg0_li__link___4BEC364B] DEFAULT (N'')
) ON [PRIMARY]
GO
ALTER TABLE [git].[wpstg0_links] ADD CONSTRAINT [PK_wpstg0_links_link_id] PRIMARY KEY CLUSTERED ([link_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [link_visible] ON [git].[wpstg0_links] ([link_visible]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wpstg0_links', 'SCHEMA', N'git', 'TABLE', N'wpstg0_links', NULL, NULL
GO
