.class public abstract Landroid/support/v4/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .registers 2

    .prologue
    .line 250
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 3

    .prologue
    .line 241
    return-void
.end method

.method public onEdgeLock(I)Z
    .registers 3

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .registers 3

    .prologue
    .line 215
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 182
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 2

    .prologue
    .line 160
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 171
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 4

    .prologue
    .line 202
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method
