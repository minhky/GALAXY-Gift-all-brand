.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/VisibilityAwareImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation


# static fields
.field private static final AUTO_MINI_LARGEST_SCREEN_WIDTH:I = 0x1d6

.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field mCompatPadding:Z

.field private mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

.field mImagePadding:I

.field private mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

.field private mMaxImageSize:I

.field private mRippleColor:I

.field final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private final mTouchArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    .line 159
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 161
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 164
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 165
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/design/widget/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 167
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 168
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 169
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    .line 170
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 171
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 173
    sget v3, Landroid/support/design/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    new-instance v0, Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 177
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 179
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/design/R$dimen;->design_fab_image_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mMaxImageSize:I

    .line 181
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    iget v6, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 183
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 184
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 185
    return-void
.end method

.method static synthetic access$001(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createImpl()Landroid/support/design/widget/FloatingActionButtonImpl;
    .registers 4

    .prologue
    .line 795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 796
    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 797
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonLollipop;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    sget-object v2, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/design/widget/FloatingActionButtonLollipop;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    .line 803
    :goto_12
    return-object v0

    .line 799
    :cond_13
    const/16 v1, 0xe

    if-lt v0, v1, :cond_24

    .line 800
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonIcs;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    sget-object v2, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/design/widget/FloatingActionButtonIcs;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    goto :goto_12

    .line 803
    :cond_24
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonGingerbread;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    sget-object v2, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    goto :goto_12
.end method

.method private getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    if-nez v0, :cond_a

    .line 789
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->createImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    .line 791
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    return-object v0
.end method

.method private getSizeDimension(I)I
    .registers 4

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 439
    packed-switch p1, :pswitch_data_32

    .line 451
    :pswitch_7
    sget v1, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_d
    return v0

    .line 442
    :pswitch_e
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper;->b(Landroid/content/res/Resources;)I

    move-result v1

    .line 443
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper;->a(Landroid/content/res/Resources;)I

    move-result v0

    .line 444
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1d6

    if-ge v0, v1, :cond_24

    const/4 v0, 0x1

    .line 445
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result v0

    goto :goto_d

    :cond_24
    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result v0

    goto :goto_d

    .line 448
    :pswitch_2a
    sget v1, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_d

    .line 439
    nop

    :pswitch_data_32
    .packed-switch -0x1
        :pswitch_e
        :pswitch_7
        :pswitch_2a
    .end packed-switch
.end method

.method private static resolveAdjustedSize(II)I
    .registers 4

    .prologue
    .line 508
    .line 509
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 510
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 511
    sparse-switch v1, :sswitch_data_14

    .line 528
    :goto_b
    :sswitch_b
    return p0

    .line 521
    :sswitch_c
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_b

    :sswitch_11
    move p0, v0

    .line 525
    goto :goto_b

    .line 511
    nop

    :sswitch_data_14
    .sparse-switch
        -0x80000000 -> :sswitch_c
        0x0 -> :sswitch_b
        0x40000000 -> :sswitch_11
    .end sparse-switch
.end method

.method private wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .registers 3

    .prologue
    .line 416
    if-nez p1, :cond_4

    .line 417
    const/4 v0, 0x0

    .line 420
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 469
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 470
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 471
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .registers 2

    .prologue
    .line 772
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 504
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getContentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->E(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 488
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 490
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 491
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 492
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 493
    const/4 v0, 0x1

    .line 495
    :cond_37
    return v0
.end method

.method public getRippleColor()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    return v0
.end method

.method getSizeDimension()I
    .registers 2

    .prologue
    .line 434
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 338
    return-void
.end method

.method public hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .registers 3

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 348
    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .registers 5

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 352
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 476
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 477
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 478
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 457
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 458
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onAttachedToWindow()V

    .line 459
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 463
    invoke-super {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 464
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDetachedFromWindow()V

    .line 465
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 191
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->mMaxImageSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    .line 192
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->updatePadding()V

    .line 194
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    .line 195
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v0

    .line 199
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 202
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 534
    const/4 v0, 0x0

    .line 537
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public setBackgroundColor(I)V
    .registers 4

    .prologue
    .line 301
    const-string/jumbo v0, "FloatingActionButton"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 291
    const-string/jumbo v0, "FloatingActionButton"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 4

    .prologue
    .line 296
    const-string/jumbo v0, "FloatingActionButton"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_d

    .line 255
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 256
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 258
    :cond_d
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_d

    .line 284
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 285
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 287
    :cond_d
    return-void
.end method

.method public setCompatElevation(F)V
    .registers 3

    .prologue
    .line 784
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 785
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 308
    return-void
.end method

.method public setRippleColor(I)V
    .registers 3

    .prologue
    .line 229
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_d

    .line 230
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 231
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    .line 233
    :cond_d
    return-void
.end method

.method public setSize(I)V
    .registers 3

    .prologue
    .line 396
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    if-eq p1, v0, :cond_9

    .line 397
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 398
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    .line 400
    :cond_9
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    .prologue
    .line 365
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    if-eq v0, p1, :cond_d

    .line 366
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    .line 367
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onCompatShadowChanged()V

    .line 369
    :cond_d
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 316
    return-void
.end method

.method public show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .registers 3

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 326
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .registers 5

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    .line 330
    return-void
.end method
