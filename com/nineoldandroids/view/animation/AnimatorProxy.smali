.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final a:Z

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/Camera;

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    return-void

    .line 21
    :cond_19
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/graphics/Camera;

    .line 48
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    .line 54
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 55
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->q:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->r:Landroid/graphics/Matrix;

    .line 64
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .line 37
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    .line 38
    :cond_10
    new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 39
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1a
    return-object v0
.end method

.method private a(Landroid/graphics/Matrix;Landroid/view/View;)V
    .registers 13

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 283
    iget-boolean v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    .line 284
    if-eqz v4, :cond_6f

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    move v1, v0

    .line 285
    :goto_16
    if-eqz v4, :cond_73

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    .line 287
    :goto_1a
    iget v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 288
    iget v5, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 289
    iget v6, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 290
    cmpl-float v7, v4, v8

    if-nez v7, :cond_2c

    cmpl-float v7, v5, v8

    if-nez v7, :cond_2c

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_49

    .line 291
    :cond_2c
    iget-object v7, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/graphics/Camera;

    .line 292
    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    .line 293
    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 294
    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->rotateY(F)V

    .line 295
    neg-float v4, v6

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 296
    invoke-virtual {v7, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 297
    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    .line 298
    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 299
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 302
    :cond_49
    iget v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 303
    iget v5, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 304
    cmpl-float v6, v4, v9

    if-nez v6, :cond_55

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_67

    .line 305
    :cond_55
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 306
    div-float/2addr v1, v2

    neg-float v1, v1

    mul-float/2addr v4, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    .line 307
    div-float/2addr v0, v3

    neg-float v0, v0

    mul-float v2, v5, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 308
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 311
    :cond_67
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    return-void

    .line 284
    :cond_6f
    div-float v0, v2, v5

    move v1, v0

    goto :goto_16

    .line 285
    :cond_73
    div-float v0, v3, v5

    goto :goto_1a
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 258
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->r:Landroid/graphics/Matrix;

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 262
    invoke-direct {p0, v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 268
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_38

    .line 269
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 270
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 271
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 273
    :cond_38
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    .line 274
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 275
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 276
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 278
    :cond_48
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 231
    if-eqz v0, :cond_f

    .line 232
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 234
    :cond_f
    return-void
.end method

.method private p()V
    .registers 9

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 237
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_11

    .line 250
    :cond_10
    :goto_10
    return-void

    .line 241
    :cond_11
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->q:Landroid/graphics/RectF;

    .line 242
    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 243
    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_10
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    return v0
.end method

.method public a(F)V
    .registers 3

    .prologue
    .line 74
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 75
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    .line 76
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    if-eqz v0, :cond_15

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 81
    :cond_15
    return-void
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    if-eqz v0, :cond_11

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 167
    :cond_11
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 317
    if-eqz v0, :cond_16

    .line 318
    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 319
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 321
    :cond_16
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    return v0
.end method

.method public b(F)V
    .registers 3

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 87
    :cond_a
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    .line 89
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    .line 90
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 92
    :cond_15
    return-void
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 177
    if-eqz v0, :cond_11

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 180
    :cond_11
    return-void
.end method

.method public c()F
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    return v0
.end method

.method public c(F)V
    .registers 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 98
    :cond_a
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    .line 100
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    .line 101
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 103
    :cond_15
    return-void
.end method

.method public d()F
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    return v0
.end method

.method public d(F)V
    .registers 3

    .prologue
    .line 108
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 109
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 110
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 111
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 113
    :cond_e
    return-void
.end method

.method public e()F
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    return v0
.end method

.method public e(F)V
    .registers 3

    .prologue
    .line 118
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 119
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 120
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 121
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 123
    :cond_e
    return-void
.end method

.method public f()F
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    return v0
.end method

.method public f(F)V
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 130
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 131
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 132
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 134
    :cond_e
    return-void
.end method

.method public g()F
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    return v0
.end method

.method public g(F)V
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 140
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 141
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 142
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 144
    :cond_e
    return-void
.end method

.method public h()F
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    return v0
.end method

.method public h(F)V
    .registers 3

    .prologue
    .line 149
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 150
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 151
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 152
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 154
    :cond_e
    return-void
.end method

.method public i()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 157
    if-nez v0, :cond_c

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_b
.end method

.method public i(F)V
    .registers 3

    .prologue
    .line 186
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 187
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 188
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    .line 189
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 191
    :cond_e
    return-void
.end method

.method public j()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 170
    if-nez v0, :cond_c

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_b
.end method

.method public j(F)V
    .registers 3

    .prologue
    .line 196
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 197
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 198
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    .line 199
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 201
    :cond_e
    return-void
.end method

.method public k()F
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    return v0
.end method

.method public k(F)V
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 211
    if-eqz v0, :cond_14

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i(F)V

    .line 214
    :cond_14
    return-void
.end method

.method public l()F
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    return v0
.end method

.method public l(F)V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 224
    if-eqz v0, :cond_14

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j(F)V

    .line 227
    :cond_14
    return-void
.end method

.method public m()F
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 204
    if-nez v0, :cond_c

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    add-float/2addr v0, v1

    goto :goto_b
.end method

.method public n()F
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 217
    if-nez v0, :cond_c

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    add-float/2addr v0, v1

    goto :goto_b
.end method
