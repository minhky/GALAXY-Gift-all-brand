.class public Landroid/support/v7/view/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/support/v7/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/support/v7/view/SupportActionModeWrapper;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    .line 49
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->c()V

    .line 79
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 3

    .prologue
    .line 83
    iget-object v1, p0, Landroid/support/v7/view/SupportActionModeWrapper;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/internal/view/SupportMenu;

    invoke-static {v1, v0}, Landroid/support/v7/view/menu/MenuWrapperFactory;->a(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->a()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->k()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->d()V

    .line 74
    return-void
.end method

.method public isTitleOptional()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->h()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->a(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->b(I)V

    .line 104
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->a(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->a(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->a(I)V

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->b(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/view/SupportActionModeWrapper;->b:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/ActionMode;->a(Z)V

    .line 129
    return-void
.end method
