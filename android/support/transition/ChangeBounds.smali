.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_12

    .line 36
    new-instance v0, Landroid/support/transition/ChangeBoundsIcs;

    invoke-direct {v0, p0}, Landroid/support/transition/ChangeBoundsIcs;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 40
    :goto_11
    return-void

    .line 38
    :cond_12
    new-instance v0, Landroid/support/transition/ChangeBoundsKitKat;

    invoke-direct {v0, p0}, Landroid/support/transition/ChangeBoundsKitKat;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_11
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/transition/ChangeBounds;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->b(Landroid/support/transition/TransitionValues;)V

    .line 45
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/transition/ChangeBounds;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->c(Landroid/support/transition/TransitionValues;)V

    .line 50
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/transition/ChangeBounds;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionImpl;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
