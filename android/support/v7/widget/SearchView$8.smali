.class Landroid/support/v7/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    .prologue
    .line 967
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 970
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$1400(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    if-nez v2, :cond_b

    .line 1000
    :cond_a
    :goto_a
    return v0

    .line 981
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    .line 983
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    # invokes: Landroid/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->access$1500(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a

    .line 988
    :cond_2b
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    # invokes: Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$1600(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 989
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 990
    const/16 v2, 0x42

    if-ne p2, v2, :cond_a

    .line 991
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 994
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/SearchView$8;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    invoke-static {v4}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v3, v4}, Landroid/support/v7/widget/SearchView;->access$1700(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 996
    goto :goto_a
.end method
