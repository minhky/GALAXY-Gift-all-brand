.class Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V
    .registers 6

    .prologue
    .line 1834
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 7

    .prologue
    .line 1837
    invoke-virtual {p1}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v0

    .line 1838
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startLeft:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    invoke-static {v2, v3, v0}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startRight:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetRight:I

    invoke-static {v3, v4, v0}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v0

    # invokes: Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V
    invoke-static {v1, v2, v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2300(Landroid/support/design/widget/TabLayout$SlidingTabStrip;II)V

    .line 1841
    return-void
.end method
