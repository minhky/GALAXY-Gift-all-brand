.class Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ListViewCompat.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 368
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    .line 370
    return-void
.end method


# virtual methods
.method a(Z)V
    .registers 2

    .prologue
    .line 373
    iput-boolean p1, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    .line 374
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 386
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    if-eqz v0, :cond_7

    .line 387
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 389
    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    if-eqz v0, :cond_7

    .line 394
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    .line 396
    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .prologue
    .line 400
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    if-eqz v0, :cond_7

    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 403
    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    if-eqz v0, :cond_9

    .line 379
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 381
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->a:Z

    if-eqz v0, :cond_9

    .line 408
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 410
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
