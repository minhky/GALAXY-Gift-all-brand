.class public Landroid/support/v7/view/StandaloneActionMode;
.super Landroid/support/v7/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/widget/ActionBarContextView;

.field private c:Landroid/support/v7/view/ActionMode$Callback;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Landroid/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V
    .registers 7

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/v7/view/StandaloneActionMode;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    .line 53
    iput-object p3, p0, Landroid/support/v7/view/StandaloneActionMode;->c:Landroid/support/v7/view/ActionMode$Callback;

    .line 55
    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->g:Landroid/support/v7/view/menu/MenuBuilder;

    .line 57
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->g:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 58
    iput-boolean p4, p0, Landroid/support/v7/view/StandaloneActionMode;->f:Z

    .line 59
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/StandaloneActionMode;->b(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 95
    if-eqz p1, :cond_f

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_c
    iput-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->d:Ljava/lang/ref/WeakReference;

    .line 96
    return-void

    .line 95
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->a(Z)V

    .line 84
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 85
    return-void
.end method

.method public b()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->g:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/StandaloneActionMode;->a(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/support/v7/view/StandaloneActionMode;->e:Z

    if-eqz v0, :cond_5

    .line 112
    :goto_4
    return-void

    .line 108
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/StandaloneActionMode;->e:Z

    .line 110
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 111
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->c:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;)V

    goto :goto_4
.end method

.method public d()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->c:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/view/StandaloneActionMode;->g:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->b(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    .line 101
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->c:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/support/v7/view/StandaloneActionMode;->d()V

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 161
    return-void
.end method
