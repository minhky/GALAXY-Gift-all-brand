.class public Landroid/support/design/internal/NavigationSubMenu;
.super Landroid/support/v7/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationSubMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 44
    return-void
.end method
