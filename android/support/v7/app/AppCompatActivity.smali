.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/AppCompatCallback;


# instance fields
.field private a:Landroid/support/v7/app/AppCompatDelegate;

.field private b:I

.field private c:Z

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AppCompatActivity;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 436
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/TaskStackBuilder;)V
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->a(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 354
    return-void
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 134
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 453
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public b()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 469
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public b(Landroid/support/v4/app/TaskStackBuilder;)V
    .registers 2

    .prologue
    .line 372
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->a()Landroid/content/Intent;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_27

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 402
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->a(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->a(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 404
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->b(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 405
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->a()V

    .line 408
    :try_start_19
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1e

    .line 419
    :goto_1c
    const/4 v0, 0x1

    .line 421
    :goto_1d
    return v0

    .line 409
    :catch_1e
    move-exception v0

    .line 412
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_1c

    .line 417
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->b(Landroid/content/Intent;)V

    goto :goto_1c

    .line 421
    :cond_27
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public d()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 532
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->b(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0x7001

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3a

    .line 535
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 536
    if-nez v1, :cond_30

    .line 537
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->c()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->h()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 539
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatActivity;->c:Z

    .line 547
    :goto_2f
    return v0

    .line 542
    :cond_30
    if-ne v1, v0, :cond_3a

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatActivity;->c:Z

    if-eqz v1, :cond_3a

    .line 543
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatActivity;->c:Z

    goto :goto_2f

    .line 547
    :cond_3a
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2f
.end method

.method public e()Landroid/support/v7/app/AppCompatDelegate;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_a

    .line 525
    invoke-static {p0, p0}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Landroid/support/v7/app/AppCompatDelegate;

    .line 527
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    if-nez v0, :cond_15

    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 553
    new-instance v0, Landroid/support/v7/widget/VectorEnabledTintResources;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    .line 555
    :cond_15
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    goto :goto_1d
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->f()V

    .line 251
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/content/res/Configuration;)V

    .line 165
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    if-eqz v0, :cond_1b

    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroid/support/v7/app/AppCompatActivity;->d:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 171
    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->d()V

    .line 476
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->h()V

    .line 76
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->i()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Landroid/support/v7/app/AppCompatActivity;->b:I

    if-eqz v0, :cond_24

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_28

    .line 83
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/AppCompatActivity;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/app/AppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 88
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void

    .line 85
    :cond_28
    iget v0, p0, Landroid/support/v7/app/AppCompatActivity;->b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setTheme(I)V

    goto :goto_24
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 213
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->g()V

    .line 214
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    const/4 v0, 0x1

    .line 207
    :goto_7
    return v0

    .line 202
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 203
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_24

    if-eqz v0, :cond_24

    .line 204
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Z

    move-result v0

    goto :goto_7

    .line 207
    :cond_24
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 499
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 511
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->b(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method protected onPostResume()V
    .registers 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->e()V

    .line 177
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 516
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->c(Landroid/os/Bundle;)V

    .line 517
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->c()V

    .line 183
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->d()V

    .line 189
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .registers 2

    .prologue
    .line 273
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .registers 2

    .prologue
    .line 262
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 3

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->b(I)V

    .line 144
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void
.end method

.method public setTheme(I)V
    .registers 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 95
    iput p1, p0, Landroid/support/v7/app/AppCompatActivity;->b:I

    .line 96
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->e()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->f()V

    .line 243
    return-void
.end method
