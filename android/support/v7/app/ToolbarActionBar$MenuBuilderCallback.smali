.class final Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .registers 2

    .prologue
    .line 642
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V
    .registers 3

    .prologue
    .line 642
    invoke-direct {p0, p1}, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 6

    .prologue
    const/16 v3, 0x6c

    .line 651
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 652
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->c(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 653
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 659
    :cond_1f
    :goto_1f
    return-void

    .line 654
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 656
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_1f
.end method
