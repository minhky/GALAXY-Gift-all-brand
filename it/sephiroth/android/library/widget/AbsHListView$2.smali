.class Lit/sephiroth/android/library/widget/AbsHListView$2;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView;->H()V
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    .prologue
    .line 4525
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4529
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    if-eqz v0, :cond_30

    .line 4530
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    .line 4531
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 4532
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    .line 4533
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;Z)V

    .line 4535
    :cond_23
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4536
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$2;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 4539
    :cond_30
    return-void
.end method
