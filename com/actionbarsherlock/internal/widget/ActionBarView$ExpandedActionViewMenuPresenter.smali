.class Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V
    .registers 2

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V
    .registers 3

    .prologue
    .line 1410
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .registers 8
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1500
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    if-eqz v0, :cond_14

    .line 1501
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1504
    :cond_14
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1505
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1506
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v3, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1507
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3f

    .line 1508
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$5(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1510
    :cond_3f
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    .line 1511
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_b8

    .line 1512
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # invokes: Lcom/actionbarsherlock/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$11(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    .line 1517
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$12(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    .line 1518
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1520
    :cond_70
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$12(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_89

    .line 1521
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setVisibility(I)V

    .line 1523
    :cond_89
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a4

    .line 1524
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    :cond_a4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1528
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->requestLayout()V

    .line 1529
    invoke-virtual {p2, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1531
    return v4

    .line 1514
    :cond_b8
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_56
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .registers 7
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 1472
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1473
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$4(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1474
    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1475
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_39

    .line 1476
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1478
    :cond_39
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_52

    .line 1479
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1481
    :cond_52
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$5(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1483
    :cond_6c
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1484
    :cond_7d
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setVisibility(I)V

    .line 1485
    :cond_8e
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    :cond_9f
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->requestLayout()V

    .line 1487
    invoke-virtual {p2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1489
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    if-eqz v0, :cond_b8

    .line 1490
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1493
    :cond_b8
    return v3
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 1467
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 1536
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .registers 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1425
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_f

    .line 1418
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    .line 1420
    :cond_f
    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 1421
    return-void
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1463
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1546
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 1541
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1458
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1454
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 8
    .param p1, "cleared"    # Z

    .prologue
    .line 1431
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1b

    .line 1432
    const/4 v1, 0x0

    .line 1434
    .local v1, "found":Z
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_12

    .line 1435
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1436
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-lt v2, v0, :cond_1c

    .line 1445
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_12
    :goto_12
    if-nez v1, :cond_1b

    .line 1447
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    .line 1450
    .end local v1    # "found":Z
    :cond_1b
    return-void

    .line 1437
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    :cond_1c
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    .line 1438
    .local v3, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_28

    .line 1439
    const/4 v1, 0x1

    .line 1440
    goto :goto_12

    .line 1436
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method
