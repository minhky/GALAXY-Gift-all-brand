.class Landroid/support/design/widget/TextInputLayout$4;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .registers 2

    .prologue
    .line 910
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$4;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 4
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$4;->this$0:Landroid/support/design/widget/TextInputLayout;

    # getter for: Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;
    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->access$500(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 914
    return-void
.end method
