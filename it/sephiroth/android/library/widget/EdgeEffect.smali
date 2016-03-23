.class public Lit/sephiroth/android/library/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x0

.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MIN_WIDTH:I = 0x12c

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDirection:I

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private final mEdgeHeight:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private final mGlowHeight:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mGlowWidth:I

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxEffectHeight:I

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "direction"    # I

    .prologue
    const/high16 v4, 0x40800000

    const/high16 v3, 0x3f000000

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lit/sephiroth/android/library/R$drawable;->hlv_overscroll_edge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 142
    sget v1, Lit/sephiroth/android/library/R$drawable;->hlv_overscroll_glow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 144
    iput p2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDirection:I

    .line 146
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeHeight:I

    .line 147
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    .line 148
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowWidth:I

    .line 150
    iget v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mMaxEffectHeight:I

    .line 154
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43960000

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mMinWidth:I

    .line 155
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    return-void
.end method

.method private update()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a0000

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    .line 383
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 384
    .local v4, "time":J
    iget-wide v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float v3, v6

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    div-float/2addr v3, v6

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 386
    .local v2, "t":F
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 388
    .local v1, "interp":F
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    .line 389
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    .line 390
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    .line 391
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    .line 393
    const v3, 0x3f7fbe77

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_54

    .line 394
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    packed-switch v3, :pswitch_data_c0

    .line 443
    :cond_54
    :goto_54
    return-void

    .line 396
    :pswitch_55
    iput v11, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 397
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    .line 398
    iput v10, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    .line 400
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 401
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 402
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 403
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 406
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 407
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 408
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 409
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    .line 412
    :pswitch_78
    const/4 v3, 0x4

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 413
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    .line 414
    iput v10, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    .line 416
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 417
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 418
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 419
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 422
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 423
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 424
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 425
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    .line 430
    :pswitch_9c
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_b8

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v3, v6

    div-float v0, v9, v3

    .line 433
    .local v0, "factor":F
    :goto_a9
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    .line 436
    iput v11, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    goto :goto_54

    .line 430
    .end local v0    # "factor":F
    :cond_b8
    const v0, 0x7f7fffff

    goto :goto_a9

    .line 439
    :pswitch_bc
    const/4 v3, 0x0

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    goto :goto_54

    .line 394
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_55
        :pswitch_bc
        :pswitch_9c
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x437f0000

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/EdgeEffect;->update()V

    .line 337
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 339
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x40800000

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v1, v3

    .line 343
    .local v1, "glowBottom":I
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDirection:I

    if-nez v3, :cond_80

    .line 344
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v3, v2, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    :goto_42
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeHeight:I

    int-to-float v3, v3

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 355
    .local v0, "edgeBottom":I
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDirection:I

    if-nez v3, :cond_88

    .line 356
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    :goto_6a
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7a

    if-nez v1, :cond_7a

    if-nez v0, :cond_7a

    .line 364
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 367
    :cond_7a
    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    if-eqz v3, :cond_7f

    const/4 v2, 0x1

    :cond_7f
    return v2

    .line 346
    .end local v0    # "edgeBottom":I
    :cond_80
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v3, v2, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_42

    .line 358
    .restart local v0    # "edgeBottom":I
    :cond_88
    iget-object v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6a
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 198
    return-void
.end method

.method public getBounds(Z)Landroid/graphics/Rect;
    .registers 6
    .param p1, "reverse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mWidth:I

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mMaxEffectHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    iget-object v1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mX:I

    iget v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mY:I

    if-eqz p1, :cond_14

    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mMaxEffectHeight:I

    :cond_14
    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 379
    iget-object v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAbsorb(I)V
    .registers 8
    .param p1, "velocity"    # I

    .prologue
    const/high16 v5, 0x3f800000

    const/high16 v4, 0x3f000000

    const/4 v3, 0x0

    .line 291
    const/4 v0, 0x2

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 292
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 294
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    .line 295
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    .line 299
    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 300
    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    .line 303
    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 304
    iput v3, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 308
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 310
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 317
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe00000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 319
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 321
    return-void
.end method

.method public onPull(F)V
    .registers 12
    .param p1, "deltaDistance"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x40e00000

    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 211
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 212
    .local v2, "now":J
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    iget-wide v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1b

    .line 250
    :goto_1a
    return-void

    .line 215
    :cond_1b
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_21

    .line 216
    iput v8, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    .line 218
    :cond_21
    iput v6, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 220
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    .line 221
    const/high16 v4, 0x43270000

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    .line 223
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mPullDistance:F

    .line 224
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 226
    .local v0, "distance":F
    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    .line 227
    const/high16 v4, 0x3f000000

    mul-float v5, v0, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    .line 230
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    .line 234
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 235
    .local v1, "glowChange":F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_75

    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_75

    .line 236
    neg-float v1, v1

    .line 238
    :cond_75
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_7d

    .line 239
    iput v7, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    .line 243
    :cond_7d
    const/high16 v4, 0x40800000

    iget v5, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    .line 246
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 247
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 248
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 249
    iget v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_1a
.end method

.method public onRelease()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 259
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mPullDistance:F

    .line 261
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 278
    :goto_d
    return-void

    .line 265
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mState:I

    .line 266
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 267
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 268
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 269
    iget v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 271
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 272
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 273
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 274
    iput v2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 276
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mStartTime:J

    .line 277
    const/high16 v0, 0x447a0000

    iput v0, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mDuration:F

    goto :goto_d
.end method

.method public setPosition(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 177
    iput p1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mX:I

    .line 178
    iput p2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mY:I

    .line 179
    return-void
.end method

.method public setSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 165
    iput p1, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mWidth:I

    .line 166
    iput p2, p0, Lit/sephiroth/android/library/widget/EdgeEffect;->mHeight:I

    .line 167
    return-void
.end method
