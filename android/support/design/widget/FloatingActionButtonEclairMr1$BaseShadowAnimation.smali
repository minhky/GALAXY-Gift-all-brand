.class abstract Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
.super Landroid/view/animation/Animation;
.source "FloatingActionButtonEclairMr1.java"


# instance fields
.field private mShadowSizeDiff:F

.field private mShadowSizeStart:F

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V
    .registers 3

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeDiff:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 245
    return-void
.end method

.method protected abstract getTargetShadowSize()F
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 238
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getShadowSize()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    .line 239
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->getTargetShadowSize()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeDiff:F

    .line 240
    return-void
.end method
