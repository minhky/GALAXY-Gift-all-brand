.class synthetic Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout$1;
.super Ljava/lang/Object;
.source "FlipLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 124
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout$1;->a:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout$1;->a:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
