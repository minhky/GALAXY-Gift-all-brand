.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1369
    invoke-direct {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 1372
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1374
    sget-object v0, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1376
    sget v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1379
    return-void
.end method

.method private static getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 3

    .prologue
    .line 1452
    .line 1453
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1454
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_15

    .line 1455
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1457
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 1416
    .line 1417
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1418
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_2b

    .line 1421
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    .line 1422
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1423
    # getter for: Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I
    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->access$000(Landroid/support/design/widget/AppBarLayout$Behavior;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1424
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 1425
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1422
    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 1427
    :cond_2b
    return-void
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    .prologue
    .line 1462
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_19

    .line 1463
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1464
    instance-of v3, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_15

    .line 1465
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1468
    :goto_14
    return-object v0

    .line 1462
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1468
    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 3

    .prologue
    .line 1367
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    .prologue
    .line 1367
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1431
    instance-of v1, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_19

    .line 1432
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1433
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    .line 1434
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    .line 1435
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v3

    .line 1437
    if-eqz v2, :cond_1a

    add-int v4, v1, v3

    if-gt v4, v2, :cond_1a

    .line 1448
    :cond_19
    :goto_19
    return v0

    .line 1441
    :cond_1a
    sub-int/2addr v1, v2

    .line 1442
    if-eqz v1, :cond_19

    .line 1444
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_19
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1473
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_b

    .line 1474
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1476
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    .prologue
    .line 1367
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1384
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1390
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1391
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 1367
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 8

    .prologue
    .line 1367
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1397
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v3

    .line 1398
    if-eqz v3, :cond_33

    .line 1400
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1402
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 1403
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1405
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1408
    if-nez p4, :cond_31

    move v0, v1

    :goto_2d
    invoke-virtual {v3, v2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1412
    :goto_30
    return v1

    :cond_31
    move v0, v2

    .line 1408
    goto :goto_2d

    :cond_33
    move v1, v2

    .line 1412
    goto :goto_30
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 3

    .prologue
    .line 1367
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 3

    .prologue
    .line 1367
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
