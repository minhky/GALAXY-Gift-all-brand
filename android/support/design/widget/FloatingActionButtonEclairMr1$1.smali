.class Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;
.super Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonEclairMr1;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .registers 4

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$fromUser:Z

    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->access$202(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Z)Z

    .line 179
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$fromUser:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 180
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_1a

    .line 181
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v0}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 183
    :cond_1a
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    const/4 v1, 0x1

    # setter for: Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->access$202(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Z)Z

    .line 174
    return-void
.end method
