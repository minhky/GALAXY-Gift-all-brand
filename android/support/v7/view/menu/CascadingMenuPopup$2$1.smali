.class Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup$2;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic d:Landroid/support/v7/view/menu/CascadingMenuPopup$2;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup$2;Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 5

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->d:Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v0, :cond_19

    .line 159
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->d:Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->d:Z

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 161
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->d:Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    iput-boolean v2, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->d:Z

    .line 165
    :cond_19
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 166
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->c:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;->b:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 168
    :cond_30
    return-void
.end method