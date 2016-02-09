.class public Lcom/slidingmenu/lib/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final MARGIN_THRESHOLD:I = 0x30

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mMarginThreshold:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTransformer:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

.field private mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    .line 376
    iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    .line 41
    const/high16 v0, 0x42400000

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 40
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    .line 42
    return-void
.end method

.method private getSelectorTop()I
    .registers 4

    .prologue
    .line 421
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 422
    .local v0, "y":I
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 423
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_19

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 113
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    :goto_18
    return-void

    .line 116
    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_18
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .registers 13
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 355
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_7

    .line 374
    :goto_6
    return-void

    .line 356
    :cond_7
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 357
    .local v6, "alpha":I
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    const/4 v7, 0x0

    .line 359
    .local v7, "left":I
    const/4 v8, 0x0

    .line 360
    .local v8, "right":I
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_40

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 373
    :cond_32
    :goto_32
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 363
    :cond_40
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    .line 366
    goto :goto_32

    :cond_54
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 369
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_32
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .registers 12
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 381
    iget-boolean v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_7

    .line 402
    :cond_6
    :goto_6
    return-void

    .line 382
    :cond_7
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 383
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    sget v5, Lcom/slidingmenu/lib/R$id;->selected_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 385
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 387
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 388
    .local v1, "offset":I
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v4, :cond_4d

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 390
    .local v2, "right":I
    sub-int v0, v2, v1

    .line 391
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 392
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 393
    :cond_4d
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_49

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 395
    .restart local v0    # "left":I
    add-int v2, v0, v1

    .line 396
    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 397
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_49
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 336
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_a

    .line 352
    :cond_9
    :goto_9
    return-void

    .line 337
    :cond_a
    const/4 v0, 0x0

    .line 338
    .local v0, "left":I
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v1, :cond_29

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    .line 350
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 340
    :cond_29
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 342
    goto :goto_17

    :cond_33
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 343
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_51

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    goto :goto_17
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .registers 4
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 259
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 260
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 264
    :goto_12
    return v0

    .line 261
    :cond_13
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_12

    .line 264
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .registers 4
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 268
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_9

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 273
    :goto_8
    return v0

    .line 270
    :cond_9
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 271
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_8

    .line 273
    :cond_1d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBehindWidth()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .registers 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_1b

    .line 234
    packed-switch p2, :pswitch_data_50

    .line 255
    :cond_7
    :goto_7
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_b
    return v0

    .line 236
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_b

    .line 238
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_b

    .line 240
    :cond_1b
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 241
    packed-switch p2, :pswitch_data_5a

    :pswitch_23
    goto :goto_7

    .line 243
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_b

    .line 245
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    .line 247
    :cond_33
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 248
    packed-switch p2, :pswitch_data_64

    :pswitch_3b
    goto :goto_7

    .line 250
    :pswitch_3c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_b

    .line 252
    :pswitch_46
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    .line 234
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_c
        :pswitch_7
        :pswitch_16
    .end packed-switch

    .line 241
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_29
    .end packed-switch

    .line 248
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_46
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .registers 6
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 197
    if-le p1, v3, :cond_d

    move p1, v0

    .line 198
    :cond_6
    :goto_6
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_11

    if-le p1, v3, :cond_11

    .line 203
    :goto_c
    return v1

    .line 197
    :cond_d
    if-ge p1, v3, :cond_6

    move p1, v1

    goto :goto_6

    .line 200
    :cond_11
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v1, v3, :cond_19

    if-ge p1, v3, :cond_19

    move v1, v0

    .line 201
    goto :goto_c

    :cond_19
    move v1, p1

    .line 203
    goto :goto_c
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .registers 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 278
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 279
    .local v1, "right":I
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v4, :cond_18

    .line 280
    if-lt p2, v0, :cond_16

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_16

    .line 287
    :cond_15
    :goto_15
    return v2

    :cond_16
    move v2, v3

    .line 280
    goto :goto_15

    .line 281
    :cond_18
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_26

    .line 282
    if-gt p2, v1, :cond_24

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_15

    :cond_24
    move v2, v3

    goto :goto_15

    .line 283
    :cond_26
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3c

    .line 284
    if-lt p2, v0, :cond_32

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_15

    .line 285
    :cond_32
    if-gt p2, v1, :cond_3a

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    .line 284
    if-ge p2, v4, :cond_15

    :cond_3a
    move v2, v3

    goto :goto_15

    :cond_3c
    move v2, v3

    .line 287
    goto :goto_15
.end method

.method public menuClosedSlideAllowed(F)Z
    .registers 6
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 314
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_e

    .line 315
    cmpl-float v2, p1, v3

    if-lez v2, :cond_c

    .line 321
    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    .line 315
    goto :goto_b

    .line 316
    :cond_e
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_18

    .line 317
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 318
    :cond_18
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 321
    goto :goto_b
.end method

.method public menuOpenSlideAllowed(F)Z
    .registers 6
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 325
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_e

    .line 326
    cmpg-float v2, p1, v3

    if-gez v2, :cond_c

    .line 332
    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    .line 326
    goto :goto_b

    .line 327
    :cond_e
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_18

    .line 328
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 329
    :cond_18
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 332
    goto :goto_b
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .registers 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    .line 295
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_e

    .line 301
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 297
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 299
    :pswitch_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_6

    .line 295
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .registers 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 305
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_18

    if-nez p2, :cond_18

    .line 306
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_17

    move v0, v1

    .line 310
    :cond_17
    :goto_17
    return v0

    .line 307
    :cond_18
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eq v2, v1, :cond_22

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_17

    if-ne p2, v3, :cond_17

    .line 308
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_17

    move v0, v1

    goto :goto_17
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 121
    sub-int v1, p4, p2

    .line 122
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 123
    .local v0, "height":I
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 124
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_1b

    .line 125
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 126
    :cond_1b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-static {v5, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 131
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 132
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/slidingmenu/lib/CustomViewBehind;->setMeasuredDimension(II)V

    .line 133
    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 134
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 135
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 136
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_26

    .line 137
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 138
    :cond_26
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .registers 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "vis":I
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v1, :cond_28

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_e

    const/4 v0, 0x4

    .line 211
    :cond_e
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    .line 227
    :cond_1b
    :goto_1b
    if-ne v0, v2, :cond_24

    .line 228
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_24
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->setVisibility(I)V

    .line 230
    return-void

    .line 212
    :cond_28
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4e

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_34

    const/4 v0, 0x4

    .line 214
    :cond_34
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 215
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 214
    invoke-virtual {p0, v1, p3}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_1b

    .line 216
    :cond_4e
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1b

    .line 217
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_82

    move v1, v2

    :goto_5c
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_84

    move v1, v2

    :goto_68
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    if-nez p2, :cond_86

    move v0, v2

    .line 220
    :goto_6e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_88

    .line 221
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_1b

    :cond_82
    move v1, v3

    .line 217
    goto :goto_5c

    :cond_84
    move v1, v3

    .line 218
    goto :goto_68

    :cond_86
    move v0, v3

    .line 219
    goto :goto_6e

    .line 223
    :cond_88
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 224
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 223
    invoke-virtual {p0, v1, p3}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_1b
.end method

.method public scrollTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 94
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_a

    .line 95
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 96
    :cond_a
    return-void
.end method

.method public setCanvasTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
    .registers 2
    .param p1, "t"    # Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 50
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    .line 89
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 64
    :cond_9
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public setCustomViewAbove(Lcom/slidingmenu/lib/CustomViewAbove;)V
    .registers 2
    .param p1, "customViewAbove"    # Lcom/slidingmenu/lib/CustomViewAbove;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    .line 46
    return-void
.end method

.method public setFadeDegree(F)V
    .registers 4
    .param p1, "degree"    # F

    .prologue
    .line 191
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    .line 192
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_13
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F

    .line 194
    return-void
.end method

.method public setFadeEnabled(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z

    .line 188
    return-void
.end method

.method public setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 150
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 152
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_f
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 154
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_19
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mMode:I

    .line 157
    return-void
.end method

.method public setScrollScale(F)V
    .registers 2
    .param p1, "scrollScale"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    .line 165
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 79
    :cond_9
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 179
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 410
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    sget v1, Lcom/slidingmenu/lib/R$id;->selected_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 411
    iput-object v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 413
    :cond_e
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 414
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 415
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    sget v1, Lcom/slidingmenu/lib/R$id;->selected_view:I

    const-string v2, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 416
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 418
    :cond_24
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 428
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->refreshDrawableState()V

    .line 429
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    .line 406
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 174
    return-void
.end method

.method public setShadowWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    .line 183
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 184
    return-void
.end method

.method public setTouchMode(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    .line 292
    return-void
.end method

.method public setWidthOffset(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    .line 54
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->requestLayout()V

    .line 55
    return-void
.end method