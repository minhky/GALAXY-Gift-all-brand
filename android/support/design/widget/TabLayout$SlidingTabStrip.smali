.class Landroid/support/design/widget/TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 1635
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1636
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1627
    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1630
    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1631
    iput v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1638
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1639
    return-void
.end method

.method static synthetic access$2300(Landroid/support/design/widget/TabLayout$SlidingTabStrip;II)V
    .registers 3
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1623
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$2402(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 1623
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2502(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 1623
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1777
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_f

    .line 1779
    :cond_8
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1780
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1781
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1783
    :cond_f
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f800000

    .line 1754
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1757
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_55

    .line 1758
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1759
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1761
    .local v2, "right":I
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_51

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_51

    .line 1763
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1764
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1766
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1773
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_51
    :goto_51
    invoke-direct {p0, v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1774
    return-void

    .line 1770
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_55
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_51
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 13
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x1

    .line 1786
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1787
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1790
    :cond_12
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_23

    move v7, v0

    .line 1793
    .local v7, "isRtl":Z
    :goto_19
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1794
    .local v9, "targetView":Landroid/view/View;
    if-nez v9, :cond_25

    .line 1796
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1852
    :cond_22
    :goto_22
    return-void

    .line 1790
    .end local v7    # "isRtl":Z
    .end local v9    # "targetView":Landroid/view/View;
    :cond_23
    const/4 v7, 0x0

    goto :goto_19

    .line 1800
    .restart local v7    # "isRtl":Z
    .restart local v9    # "targetView":Landroid/view/View;
    :cond_25
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1801
    .local v3, "targetLeft":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1805
    .local v5, "targetRight":I
    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_68

    .line 1807
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1808
    .local v2, "startLeft":I
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1829
    .local v4, "startRight":I
    :goto_3b
    if-ne v2, v3, :cond_3f

    if-eq v4, v5, :cond_22

    .line 1830
    :cond_3f
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 1831
    .local v6, "animator":Landroid/support/design/widget/ValueAnimatorCompat;
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1832
    invoke-virtual {v6, p2}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 1833
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 1834
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1843
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v6, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 1850
    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    goto :goto_22

    .line 1811
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    .end local v6    # "animator":Landroid/support/design/widget/ValueAnimatorCompat;
    :cond_68
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x18

    # invokes: Landroid/support/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->access$2000(Landroid/support/design/widget/TabLayout;I)I

    move-result v8

    .line 1812
    .local v8, "offset":I
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v0, :cond_7e

    .line 1814
    if-eqz v7, :cond_7a

    .line 1815
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_3b

    .line 1817
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_7a
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_3b

    .line 1821
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_7e
    if-eqz v7, :cond_84

    .line 1822
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_3b

    .line 1824
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_84
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_3b
.end method

.method childrenNeedLayout()Z
    .registers 5

    .prologue
    .line 1656
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_5
    if-ge v1, v2, :cond_16

    .line 1657
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1658
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_13

    .line 1659
    const/4 v3, 0x1

    .line 1662
    .end local v0    # "child":Landroid/view/View;
    :goto_12
    return v3

    .line 1656
    .restart local v0    # "child":Landroid/view/View;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1662
    .end local v0    # "child":Landroid/view/View;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1856
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1859
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_26

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_26

    .line 1860
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1863
    :cond_26
    return-void
.end method

.method getIndicatorPosition()F
    .registers 3

    .prologue
    .line 1676
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1738
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1740
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1743
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1744
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->getDuration()J

    move-result-wide v0

    .line 1745
    .local v0, "duration":J
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 v3, 0x3f800000

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v4}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 1751
    .end local v0    # "duration":J
    :goto_2e
    return-void

    .line 1749
    :cond_2f
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    goto :goto_2e
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1681
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1683
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000

    if-eq v8, v9, :cond_f

    .line 1734
    :cond_e
    :goto_e
    return-void

    .line 1689
    :cond_f
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mMode:I
    invoke-static {v8}, Landroid/support/design/widget/TabLayout;->access$1700(Landroid/support/design/widget/TabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_e

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabGravity:I
    invoke-static {v8}, Landroid/support/design/widget/TabLayout;->access$2100(Landroid/support/design/widget/TabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_e

    .line 1690
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1693
    .local v1, "count":I
    const/4 v4, 0x0

    .line 1694
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_26
    if-ge v3, v7, :cond_3d

    .line 1695
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1696
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3a

    .line 1697
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1694
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1701
    .end local v0    # "child":Landroid/view/View;
    :cond_3d
    if-lez v4, :cond_e

    .line 1706
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v9, 0x10

    # invokes: Landroid/support/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v8, v9}, Landroid/support/design/widget/TabLayout;->access$2000(Landroid/support/design/widget/TabLayout;I)I

    move-result v2

    .line 1707
    .local v2, "gutter":I
    const/4 v6, 0x0

    .line 1709
    .local v6, "remeasure":Z
    mul-int v8, v4, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_72

    .line 1712
    const/4 v3, 0x0

    :goto_54
    if-ge v3, v1, :cond_7d

    .line 1713
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1715
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v8, v4, :cond_6a

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_6f

    .line 1716
    :cond_6a
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1717
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1718
    const/4 v6, 0x1

    .line 1712
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 1724
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_72
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # setter for: Landroid/support/design/widget/TabLayout;->mTabGravity:I
    invoke-static {v8, v12}, Landroid/support/design/widget/TabLayout;->access$2102(Landroid/support/design/widget/TabLayout;I)I

    .line 1725
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    # invokes: Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V
    invoke-static {v8, v12}, Landroid/support/design/widget/TabLayout;->access$2200(Landroid/support/design/widget/TabLayout;Z)V

    .line 1726
    const/4 v6, 0x1

    .line 1729
    :cond_7d
    if-eqz v6, :cond_e

    .line 1731
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_e
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 1666
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1667
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1670
    :cond_11
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1671
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1672
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1673
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1642
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 1643
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1644
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1646
    :cond_10
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .prologue
    .line 1649
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_9

    .line 1650
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1651
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1653
    :cond_9
    return-void
.end method