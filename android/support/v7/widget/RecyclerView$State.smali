.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field private mInPreLayout:Z

.field private mIsMeasuring:Z

.field mItemCount:I

.field private mLayoutStep:I

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I

.field private mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10044
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 10046
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 10054
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 10059
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 10065
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 10067
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 10069
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 10071
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 10073
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 10075
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 10077
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return-void
.end method

.method static synthetic access$1702(Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10025
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic access$1712(Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 3
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10025
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return v0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10025
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10025
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10025
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return v0
.end method

.method static synthetic access$2102(Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10025
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return p1
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10025
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10025
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10025
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10025
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10025
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10025
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10025
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10025
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10025
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    return p1
.end method

.method static synthetic access$2802(Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10025
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic access$5902(Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10025
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method


# virtual methods
.method assertLayoutStep(I)V
    .registers 5
    .param p1, "accepted"    # I

    .prologue
    .line 10031
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_34

    .line 10032
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10036
    :cond_34
    return-void
.end method

.method public didStructureChange()Z
    .registers 2

    .prologue
    .line 10205
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 10159
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 10160
    const/4 v0, 0x0

    .line 10162
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 10233
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_9
.end method

.method public getTargetScrollPosition()I
    .registers 2

    .prologue
    .line 10188
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .registers 3

    .prologue
    .line 10197
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isMeasuring()Z
    .registers 2

    .prologue
    .line 10105
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .registers 2

    .prologue
    .line 10113
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 10174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 10175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 10177
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10178
    return-void
.end method

.method public remove(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .prologue
    .line 10144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 10148
    :goto_4
    return-void

    .line 10147
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4
.end method

.method reset()Landroid/support/v7/widget/RecyclerView$State;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10080
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 10081
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    .line 10082
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 10084
    :cond_d
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 10085
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 10086
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 10087
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 10240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .registers 2

    .prologue
    .line 10124
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .registers 2

    .prologue
    .line 10135
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
