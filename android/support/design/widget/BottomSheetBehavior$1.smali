.class Landroid/support/design/widget/BottomSheetBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .registers 2

    .prologue
    .line 520
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 591
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 586
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
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
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 596
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
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
    .param p1, "state"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
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
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 542
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V
    invoke-static {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->access$500(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 543
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
    const/4 v4, 0x0

    .line 556
    cmpg-float v3, p3, v4

    if-gez v3, :cond_2d

    .line 557
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 558
    .local v2, "top":I
    const/4 v1, 0x3

    .line 575
    .local v1, "targetState":I
    :goto_c
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 576
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v4, 0x2

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 577
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v3, v4, p1, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 582
    :goto_2c
    return-void

    .line 559
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_2d
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z
    invoke-static {v3, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->access$900(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 560
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 561
    .restart local v2    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto :goto_c

    .line 562
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_45
    cmpl-float v3, p3, v4

    if-nez v3, :cond_77

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 564
    .local v0, "currentTop":I
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 565
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 566
    .restart local v2    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto :goto_c

    .line 568
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_6f
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 569
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_c

    .line 572
    .end local v0    # "currentTop":I
    .end local v1    # "targetState":I
    .end local v2    # "top":I
    :cond_77
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    .line 573
    .restart local v2    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_c

    .line 580
    :cond_7f
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # invokes: Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v3, v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_2c
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$1;, "Landroid/support/design/widget/BottomSheetBehavior.1;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mState:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    if-ne v3, v1, :cond_b

    .line 537
    :cond_a
    :goto_a
    return v2

    .line 527
    :cond_b
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 530
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mState:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_39

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    if-ne v3, p2, :cond_39

    .line 531
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$300(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 532
    .local v0, "scroll":Landroid/view/View;
    if-eqz v0, :cond_39

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 537
    .end local v0    # "scroll":Landroid/view/View;
    :cond_39
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    # getter for: Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_4f

    :goto_4d
    move v2, v1

    goto :goto_a

    :cond_4f
    move v1, v2

    goto :goto_4d
.end method