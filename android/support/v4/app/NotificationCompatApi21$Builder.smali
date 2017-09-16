.class public Landroid/support/v4/app/NotificationCompatApi21$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi21.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithActions;
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;


# instance fields
.field private a:Landroid/app/Notification$Builder;

.field private b:Landroid/os/Bundle;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private e:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 74
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 75
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 76
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 77
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 80
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 81
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_10a

    const/4 v4, 0x1

    .line 82
    :goto_47
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_10d

    const/4 v4, 0x1

    .line 83
    :goto_52
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_110

    const/4 v4, 0x1

    .line 84
    :goto_5d
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 85
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 86
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 87
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 88
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 89
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 90
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 91
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_113

    const/4 v4, 0x1

    .line 92
    :goto_8c
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 94
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 95
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 96
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 97
    move/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 98
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 99
    move/from16 v0, p18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 100
    move-object/from16 v0, p25

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 101
    move/from16 v0, p26

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 102
    move-object/from16 v0, p27

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 103
    move-object/from16 v0, p19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 104
    move/from16 v0, p22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 105
    move/from16 v0, p23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 106
    move-object/from16 v0, p24

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->a:Landroid/app/Notification$Builder;

    .line 107
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/os/Bundle;

    .line 108
    if-eqz p21, :cond_f4

    .line 109
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/os/Bundle;

    move-object/from16 v0, p21

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 111
    :cond_f4
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_116

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_f8

    .line 81
    :cond_10a
    const/4 v4, 0x0

    goto/16 :goto_47

    .line 82
    :cond_10d
    const/4 v4, 0x0

    goto/16 :goto_52

    .line 83
    :cond_110
    const/4 v4, 0x0

    goto/16 :goto_5d

    .line 91
    :cond_113
    const/4 v4, 0x0

    goto/16 :goto_8c

    .line 114
    :cond_116
    move-object/from16 v0, p28

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->c:Landroid/widget/RemoteViews;

    .line 115
    move-object/from16 v0, p29

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->d:Landroid/widget/RemoteViews;

    .line 116
    move-object/from16 v0, p30

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->e:Landroid/widget/RemoteViews;

    .line 117
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->a:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/NotificationCompatApi20;->a(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V

    .line 122
    return-void
.end method

.method public b()Landroid/app/Notification;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 132
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 133
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_15

    .line 134
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 136
    :cond_15
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1d

    .line 137
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 139
    :cond_1d
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->e:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_25

    .line 140
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->e:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 142
    :cond_25
    return-object v0
.end method
