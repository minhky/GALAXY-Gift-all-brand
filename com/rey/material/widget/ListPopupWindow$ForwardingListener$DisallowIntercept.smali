.class Lcom/rey/material/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;)V
    .registers 2

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;
    .param p2, "x1"    # Lcom/rey/material/widget/ListPopupWindow$1;

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1520
    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;

    # getter for: Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;
    invoke-static {v1}, Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;->access$1300(Lcom/rey/material/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1521
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1522
    return-void
.end method
