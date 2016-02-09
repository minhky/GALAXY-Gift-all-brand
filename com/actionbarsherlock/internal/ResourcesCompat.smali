.class public final Lcom/actionbarsherlock/internal/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResources_getBoolean(Landroid/content/Context;I)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/high16 v8, 0x43f00000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 25
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v6, v7, :cond_13

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 56
    :cond_12
    :goto_12
    return v4

    .line 29
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 30
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v6, v7

    .line 31
    .local v3, "widthDp":F
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v6, v7

    .line 32
    .local v0, "heightDp":F
    cmpg-float v6, v3, v0

    if-gez v6, :cond_38

    move v2, v3

    .line 34
    .local v2, "smallestWidthDp":F
    :goto_2e
    sget v6, Lcom/actionbarsherlock/R$bool;->abs__action_bar_embed_tabs:I

    if-ne p1, v6, :cond_3a

    .line 35
    cmpl-float v6, v3, v8

    if-gez v6, :cond_12

    move v4, v5

    .line 38
    goto :goto_12

    .end local v2    # "smallestWidthDp":F
    :cond_38
    move v2, v0

    .line 32
    goto :goto_2e

    .line 40
    .restart local v2    # "smallestWidthDp":F
    :cond_3a
    sget v6, Lcom/actionbarsherlock/R$bool;->abs__split_action_bar_is_narrow:I

    if-ne p1, v6, :cond_44

    .line 41
    cmpl-float v6, v3, v8

    if-ltz v6, :cond_12

    move v4, v5

    .line 42
    goto :goto_12

    .line 46
    :cond_44
    sget v6, Lcom/actionbarsherlock/R$bool;->abs__action_bar_expanded_action_views_exclusive:I

    if-ne p1, v6, :cond_50

    .line 47
    const/high16 v6, 0x44160000

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_12

    move v4, v5

    .line 48
    goto :goto_12

    .line 52
    :cond_50
    sget v6, Lcom/actionbarsherlock/R$bool;->abs__config_allowActionMenuItemTextWithIcon:I

    if-ne p1, v6, :cond_5a

    .line 53
    cmpl-float v6, v3, v8

    if-gez v6, :cond_12

    move v4, v5

    .line 56
    goto :goto_12

    .line 59
    :cond_5a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown boolean resource ID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getResources_getInteger(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 73
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_f

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 90
    :goto_e
    return v2

    .line 77
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 78
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v3

    .line 80
    .local v1, "widthDp":F
    sget v2, Lcom/actionbarsherlock/R$integer;->abs__max_action_buttons:I

    if-ne p1, v2, :cond_3c

    .line 81
    const/high16 v2, 0x44160000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2a

    .line 82
    const/4 v2, 0x5

    goto :goto_e

    .line 84
    :cond_2a
    const/high16 v2, 0x43fa0000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_32

    .line 85
    const/4 v2, 0x4

    goto :goto_e

    .line 87
    :cond_32
    const/high16 v2, 0x43b40000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3a

    .line 88
    const/4 v2, 0x3

    goto :goto_e

    .line 90
    :cond_3a
    const/4 v2, 0x2

    goto :goto_e

    .line 93
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown integer resource ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method