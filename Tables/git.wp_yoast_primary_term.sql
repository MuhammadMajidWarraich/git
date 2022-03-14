CREATE TABLE [git].[wp_yoast_primary_term]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[post_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___493AB229] DEFAULT (NULL),
[term_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___term___4A2ED662] DEFAULT (NULL),
[taxonomy] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__4B22FA9B] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__4C171ED4] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___4D0B430D] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [git].[wp_yoast_primary_term] ADD CONSTRAINT [PK_wp_yoast_primary_term_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_taxonomy] ON [git].[wp_yoast_primary_term] ([post_id], [taxonomy]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_term] ON [git].[wp_yoast_primary_term] ([post_id], [term_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'git.wp_yoast_primary_term', 'SCHEMA', N'git', 'TABLE', N'wp_yoast_primary_term', NULL, NULL
GO
