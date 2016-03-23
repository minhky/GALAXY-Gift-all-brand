.class Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 32
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 33
    return-void
.end method


# virtual methods
.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v7, -0x1

    .line 36
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v6, 0x0

    invoke-static {v4, p1, v5, p2, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_e
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_android_src:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 40
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1b

    .line 41
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1b
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 45
    .local v3, "id":I
    if-eq v3, v7, :cond_37

    .line 46
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_37

    .line 48
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_37
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 53
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_42

    .line 54
    invoke-static {v2}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_46

    .line 57
    :cond_42
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 59
    return-void

    .line 57
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id":I
    :catchall_46
    move-exception v4

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v4
.end method

.method setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 62
    if-eqz p1, :cond_28

    .line 63
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v0, :cond_17

    .line 67
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_17
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1c
    return-void

    .line 63
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_12

    .line 71
    :cond_28
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method
