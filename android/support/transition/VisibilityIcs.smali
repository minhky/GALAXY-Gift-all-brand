.class Landroid/support/transition/VisibilityIcs;
.super Landroid/support/transition/TransitionIcs;
.source "VisibilityIcs.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs;->a:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/VisibilityPort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/transition/VisibilityIcs;->b:Landroid/support/transition/TransitionInterface;

    .line 27
    if-nez p2, :cond_e

    .line 28
    new-instance v0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;

    check-cast p1, Landroid/support/transition/VisibilityInterface;

    invoke-direct {v0, p1}, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;-><init>(Landroid/support/transition/VisibilityInterface;)V

    iput-object v0, p0, Landroid/support/transition/VisibilityIcs;->a:Landroid/support/transition/TransitionPort;

    .line 32
    :goto_d
    return-void

    .line 30
    :cond_e
    check-cast p2, Landroid/support/transition/VisibilityPort;

    iput-object p2, p0, Landroid/support/transition/VisibilityIcs;->a:Landroid/support/transition/TransitionPort;

    goto :goto_d
.end method

.method public a(Landroid/support/transition/TransitionValues;)Z
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs;->a:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/VisibilityPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/VisibilityPort;->c(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs;->a:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/VisibilityPort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
