.class Landroid/support/v7/widget/StaggeredGridLayoutManager$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1994
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1997
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # invokes: Landroid/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I
    invoke-static {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$400(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)I

    move-result v1

    .line 1998
    if-nez v1, :cond_b

    .line 1999
    const/4 v0, 0x0

    .line 2004
    :goto_a
    return-object v0

    .line 2001
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # getter for: Landroid/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$500(Landroid/support/v7/widget/StaggeredGridLayoutManager;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 2002
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_a

    .line 2004
    :cond_1a
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_a
.end method
