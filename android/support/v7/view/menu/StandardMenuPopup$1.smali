.class Landroid/support/v7/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/StandardMenuPopup;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->a:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->a:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->a:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/StandardMenuPopup;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_23

    .line 65
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->a:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/StandardMenuPopup;->b:Landroid/view/View;

    .line 66
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_24

    .line 67
    :cond_1e
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->a:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 73
    :cond_23
    :goto_23
    return-void

    .line 70
    :cond_24
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup$1;->a:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v0, v0, Landroid/support/v7/view/menu/StandardMenuPopup;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_23
.end method
