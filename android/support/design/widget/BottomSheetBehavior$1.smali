.class Landroid/support/design/widget/BottomSheetBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .registers 2

    .prologue
    .line 520
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 6

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    :goto_14
    invoke-static {p2, v1, v0}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    return v0

    :cond_19
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    goto :goto_14
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 4

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 597
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 599
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_15
.end method

.method public onViewDragStateChanged(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 547
    if-ne p1, v1, :cond_8

    .line 548
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 550
    :cond_8
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V
    invoke-static {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->access$500(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 543
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 556
    cmpg-float v2, p3, v3

    if-gez v2, :cond_2e

    .line 557
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    .line 575
    :goto_d
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->a(II)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 576
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v2, 0x2

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 577
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 582
    :goto_2d
    return-void

    .line 559
    :cond_2e
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z
    invoke-static {v2, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->access$900(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 560
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    .line 561
    const/4 v0, 0x5

    goto :goto_d

    .line 562
    :cond_46
    cmpl-float v2, p3, v3

    if-nez v2, :cond_78

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 564
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_6e

    .line 565
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    goto :goto_d

    .line 568
    :cond_6e
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 569
    goto :goto_d

    .line 572
    :cond_78
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 573
    goto :goto_d

    .line 580
    :cond_82
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_2d
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mState:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 537
    :cond_a
    :goto_a
    return v2

    .line 527
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mState:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_39

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    if-ne v0, p2, :cond_39

    .line 531
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$300(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 532
    if-eqz v0, :cond_39

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 537
    :cond_39
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_50

    move v0, v1

    :goto_4e
    move v2, v0

    goto :goto_a

    :cond_50
    move v0, v2

    goto :goto_4e
.end method
