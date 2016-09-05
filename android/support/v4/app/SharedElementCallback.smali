.class public abstract Landroid/support/v4/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# static fields
.field private static b:I


# instance fields
.field private a:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/high16 v0, 0x100000

    sput v0, Landroid/support/v4/app/SharedElementCallback;->b:I

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 217
    if-lez v0, :cond_f

    if-gtz v1, :cond_11

    .line 218
    :cond_f
    const/4 v0, 0x0

    .line 237
    :goto_10
    return-object v0

    .line 220
    :cond_11
    sget v2, Landroid/support/v4/app/SharedElementCallback;->b:I

    int-to-float v2, v2

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 221
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2b

    cmpl-float v3, v2, v4

    if-nez v3, :cond_2b

    .line 223
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10

    .line 225
    :cond_2b
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 226
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v1, v0

    .line 227
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 230
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 231
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 232
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 233
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 234
    invoke-virtual {p0, v8, v8, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_10
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 10

    .prologue
    .line 169
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4d

    move-object v0, p1

    .line 170
    check-cast v0, Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 173
    if-eqz v1, :cond_4d

    if-nez v2, :cond_4d

    .line 174
    invoke-static {v1}, Landroid/support/v4/app/SharedElementCallback;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_4d

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string/jumbo v3, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    const-string/jumbo v2, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_4b

    .line 181
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 182
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 183
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 184
    const-string/jumbo v0, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_4b
    move-object v0, v1

    .line 208
    :cond_4c
    :goto_4c
    return-object v0

    .line 190
    :cond_4d
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 191
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 192
    const/4 v0, 0x0

    .line 193
    if-lez v1, :cond_4c

    if-lez v2, :cond_4c

    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    sget v3, Landroid/support/v4/app/SharedElementCallback;->b:I

    int-to-float v3, v3

    mul-int v4, v1, v2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 195
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 196
    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 197
    iget-object v3, p0, Landroid/support/v4/app/SharedElementCallback;->a:Landroid/graphics/Matrix;

    if-nez v3, :cond_80

    .line 198
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/support/v4/app/SharedElementCallback;->a:Landroid/graphics/Matrix;

    .line 200
    :cond_80
    iget-object v3, p0, Landroid/support/v4/app/SharedElementCallback;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 201
    iget-object v3, p0, Landroid/support/v4/app/SharedElementCallback;->a:Landroid/graphics/Matrix;

    iget v4, p3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, p3, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 202
    iget-object v3, p0, Landroid/support/v4/app/SharedElementCallback;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 203
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object v2, p0, Landroid/support/v4/app/SharedElementCallback;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4c
.end method

.method public a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 258
    .line 259
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_46

    .line 260
    check-cast p2, Landroid/os/Bundle;

    .line 261
    const-string/jumbo v0, "sharedElement:snapshot:bitmap"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 262
    if-nez v0, :cond_13

    .line 281
    :goto_12
    return-object v1

    .line 265
    :cond_13
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    const-string/jumbo v0, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_43

    .line 271
    const-string/jumbo v0, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 272
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 274
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_43
    move-object v0, v1

    :goto_44
    move-object v1, v0

    .line 281
    goto :goto_12

    .line 276
    :cond_46
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_55

    .line 277
    check-cast p2, Landroid/graphics/Bitmap;

    .line 278
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_44

    :cond_55
    move-object v0, v1

    goto :goto_44
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    return-void
.end method
