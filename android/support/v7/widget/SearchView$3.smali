.class Landroid/support/v7/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 189
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$3;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$3;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$100(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$3;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$100(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v0, :cond_1c

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$3;->a:Landroid/support/v7/widget/SearchView;

    # getter for: Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$100(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/database/Cursor;)V

    .line 194
    :cond_1c
    return-void
.end method
