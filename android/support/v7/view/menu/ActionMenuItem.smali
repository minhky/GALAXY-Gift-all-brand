.class public Landroid/support/v7/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 8

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->k:I

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 69
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    .line 70
    iput p3, p0, Landroid/support/v7/view/menu/ActionMenuItem;->a:I

    .line 71
    iput p2, p0, Landroid/support/v7/view/menu/ActionMenuItem;->b:I

    .line 72
    iput p4, p0, Landroid/support/v7/view/menu/ActionMenuItem;->c:I

    .line 73
    iput p5, p0, Landroid/support/v7/view/menu/ActionMenuItem;->d:I

    .line 74
    iput-object p6, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    .line 75
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 298
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    .prologue
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a()Landroid/support/v4/view/ActionProvider;
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 272
    return-object p0
.end method

.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 78
    iget-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->i:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 102
    iget-char v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->h:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->d:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->f:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 142
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->i:C

    .line 143
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 148
    return-object p0

    .line 147
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 157
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 158
    return-object p0

    .line 157
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 162
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_c

    const/16 v0, 0x10

    :goto_8
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 163
    return-object p0

    .line 162
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 173
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->k:I

    .line 174
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->j:Landroid/graphics/drawable/Drawable;

    .line 175
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 167
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->j:Landroid/graphics/drawable/Drawable;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->k:I

    .line 169
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->g:Landroid/content/Intent;

    .line 180
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 184
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->h:C

    .line 185
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 190
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 194
    iput-char p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->h:C

    .line 195
    iput-char p2, p0, Landroid/support/v7/view/menu/ActionMenuItem;->i:C

    .line 196
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    .prologue
    .line 234
    return-void
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItem;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    .line 206
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->e:Ljava/lang/CharSequence;

    .line 201
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 210
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItem;->f:Ljava/lang/CharSequence;

    .line 211
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 215
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItem;->n:I

    .line 216
    return-object p0

    .line 215
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method
