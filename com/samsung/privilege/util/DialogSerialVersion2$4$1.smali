.class Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;
.super Ljava/lang/Object;
.source "DialogSerialVersion2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialVersion2$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogSerialVersion2$4;

.field private final synthetic val$animation2:Landroid/view/animation/Animation;

.field private final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$tvSerialNumber:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSerialVersion2$4;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->this$1:Lcom/samsung/privilege/util/DialogSerialVersion2$4;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$tvSerialNumber:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$animation2:Landroid/view/animation/Animation;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    .line 500
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$tvSerialNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$tvSerialNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 505
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$tvSerialNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$tvSerialNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$4$1;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 507
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 496
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 491
    return-void
.end method
