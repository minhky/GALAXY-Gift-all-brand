.class Landroid/support/v7/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # invokes: Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    .line 213
    return-void
.end method
