.class public Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# instance fields
.field public anchorGravity:I

.field public gravity:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2264
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2265
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2268
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2224
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2231
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2237
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2244
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2250
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2270
    sget-object v0, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2273
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2276
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2278
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2282
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2285
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2287
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v1, :cond_54

    .line 2288
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2292
    :cond_54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2293
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2296
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2297
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2304
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2305
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2300
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2224
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2231
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2237
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2244
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2250
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2301
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2515
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2516
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_56

    .line 2517
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-ne v0, p2, :cond_25

    .line 2518
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2519
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2552
    :goto_1b
    return-void

    .line 2522
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2526
    :cond_25
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2527
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2528
    :goto_2d
    if-eq v1, p2, :cond_53

    if-eqz v1, :cond_53

    .line 2530
    if-ne v1, p1, :cond_47

    .line 2531
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2532
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_1b

    .line 2535
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_47
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4e

    move-object v0, v1

    .line 2539
    check-cast v0, Landroid/view/View;

    .line 2529
    :cond_4e
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_2d

    .line 2542
    :cond_53
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    goto :goto_1b

    .line 2544
    :cond_56
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2545
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_1b

    .line 2548
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2560
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    if-eq v0, v1, :cond_d

    move v0, v2

    .line 2577
    :goto_c
    return v0

    .line 2564
    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2565
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2566
    :goto_15
    if-eq v1, p2, :cond_2e

    .line 2568
    if-eqz v1, :cond_1b

    if-ne v1, p1, :cond_22

    .line 2569
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move v0, v2

    .line 2570
    goto :goto_c

    .line 2572
    :cond_22
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_29

    move-object v0, v1

    .line 2573
    check-cast v0, Landroid/view/View;

    .line 2567
    :cond_29
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_15

    .line 2576
    :cond_2e
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2577
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .registers 2

    .prologue
    .line 2433
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2434
    return-void
.end method

.method checkAnchorChanged()Z
    .registers 3

    .prologue
    .line 2379
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_b

    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 2461
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_10

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method didBlockInteraction()Z
    .registers 2

    .prologue
    .line 2390
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_7

    .line 2391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2393
    :cond_7
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2485
    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 2486
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2493
    :goto_a
    return-object v0

    .line 2490
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2491
    :cond_15
    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 2493
    :cond_18
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_a
.end method

.method public getAnchorId()I
    .registers 2

    .prologue
    .line 2313
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .registers 2

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .registers 2

    .prologue
    .line 2441
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 2371
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateAnchor()V
    .registers 2

    .prologue
    .line 2472
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2473
    return-void
.end method

.method isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 2408
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_6

    .line 2409
    const/4 v0, 0x1

    .line 2412
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_12
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    goto :goto_5

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method isDirty(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 2507
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->isDirty(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isNestedScrollAccepted()Z
    .registers 2

    .prologue
    .line 2437
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .registers 2

    .prologue
    .line 2449
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2450
    return-void
.end method

.method resetNestedScroll()V
    .registers 2

    .prologue
    .line 2429
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2430
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .registers 2

    .prologue
    .line 2425
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2426
    return-void
.end method

.method public setAnchorId(I)V
    .registers 2

    .prologue
    .line 2327
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2328
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2329
    return-void
.end method

.method public setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .registers 3

    .prologue
    .line 2351
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_c

    .line 2352
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2353
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2356
    :cond_c
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .registers 2

    .prologue
    .line 2445
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2446
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 2363
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2364
    return-void
.end method
