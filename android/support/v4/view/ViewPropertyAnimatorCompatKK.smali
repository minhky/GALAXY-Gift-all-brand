.class Landroid/support/v4/view/ViewPropertyAnimatorCompatKK;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .registers 4

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_8

    .line 27
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    .line 34
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 35
    return-void
.end method
