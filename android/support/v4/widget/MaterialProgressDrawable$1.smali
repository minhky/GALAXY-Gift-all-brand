.class Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->b()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field final synthetic b:Landroid/support/v4/widget/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    .prologue
    .line 364
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 12

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->a:Z

    if-eqz v0, :cond_13

    .line 368
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 414
    :goto_12
    return-void

    .line 372
    :cond_13
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v0

    .line 373
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->g()F

    move-result v1

    .line 374
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->f()F

    move-result v2

    .line 375
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->k()F

    move-result v3

    .line 377
    iget-object v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v4, p1, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 381
    cmpg-float v4, p1, v7

    if-gtz v4, :cond_4b

    .line 385
    div-float v4, p1, v7

    .line 387
    sub-float v5, v8, v0

    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->a()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 390
    iget-object v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v4, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->b(F)V

    .line 395
    :cond_4b
    cmpl-float v2, p1, v7

    if-lez v2, :cond_63

    .line 399
    sub-float v0, v8, v0

    .line 400
    sub-float v2, p1, v7

    div-float/2addr v2, v7

    .line 402
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 404
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->c(F)V

    .line 407
    :cond_63
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 408
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->a:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->d(F)V

    .line 410
    const/high16 v0, 0x43580000    # 216.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44870000    # 1080.0f

    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 412
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->b:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->c(F)V

    goto :goto_12
.end method
