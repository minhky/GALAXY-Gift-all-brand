.class Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3

    .prologue
    .line 1765
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_3d

    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    iget v1, v1, Lcom/rey/material/widget/ListPopupWindow;->a:I

    if-gt v0, v1, :cond_3d

    .line 1769
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1770
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->f()V

    .line 1772
    :cond_3d
    return-void
.end method
