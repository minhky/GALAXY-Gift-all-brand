.class Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->requestLayout()V

    .line 862
    return-void
.end method