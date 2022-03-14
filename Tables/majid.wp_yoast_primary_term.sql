CREATE TABLE [majid].[wp_yoast_primary_term]
(
[id] [bigint] NOT NULL IDENTITY(1, 1),
[post_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___post___3513BDEB] DEFAULT (NULL),
[term_id] [bigint] NULL CONSTRAINT [DF__wp_yoast___term___3607E224] DEFAULT (NULL),
[taxonomy] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime2] (0) NULL CONSTRAINT [DF__wp_yoast___creat__36FC065D] DEFAULT (NULL),
[updated_at] [datetime] NOT NULL CONSTRAINT [DF__wp_yoast___updat__37F02A96] DEFAULT (getdate()),
[blog_id] [bigint] NOT NULL CONSTRAINT [DF__wp_yoast___blog___38E44ECF] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [majid].[wp_yoast_primary_term] ADD CONSTRAINT [PK_wp_yoast_primary_term_id] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_taxonomy] ON [majid].[wp_yoast_primary_term] ([post_id], [taxonomy]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_term] ON [majid].[wp_yoast_primary_term] ([post_id], [term_id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'majid.wp_yoast_primary_term', 'SCHEMA', N'majid', 'TABLE', N'wp_yoast_primary_term', NULL, NULL
GO
