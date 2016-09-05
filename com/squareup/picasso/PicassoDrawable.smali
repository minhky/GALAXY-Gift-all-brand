.class final Lcom/squareup/picasso/PicassoDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PicassoDrawable.java"


# static fields
.field private static final e:Landroid/graphics/Paint;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:J

.field c:Z

.field d:I

.field private final f:Z

.field private final g:F

.field private final h:Lcom/squareup/picasso/Picasso$LoadedFrom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/squareup/picasso/PicassoDrawable;->e:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 75
    const/16 v0, 0xff

    iput v0, p0, Lcom/squareup/picasso/PicassoDrawable;->d:I

    .line 81
    iput-boolean p6, p0, Lcom/squareup/picasso/PicassoDrawable;->f:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/squareup/picasso/PicassoDrawable;->g:F

    .line 84
    iput-object p4, p0, Lcom/squareup/picasso/PicassoDrawable;->h:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 86
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-eq p4, v0, :cond_30

    if-nez p5, :cond_30

    move v0, v1

    .line 87
    :goto_23
    if-eqz v0, :cond_2f

    .line 88
    iput-object p3, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-boolean v1, p0, Lcom/squareup/picasso/PicassoDrawable;->c:Z

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/picasso/PicassoDrawable;->b:J

    .line 92
    :cond_2f
    return-void

    .line 86
    :cond_30
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private static a(Landroid/graphics/Point;I)Landroid/graphics/Path;
    .registers 7

    .prologue
    .line 156
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 157
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 159
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 160
    iget v3, p0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 161
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    return-object v2
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 146
    sget-object v0, Lcom/squareup/picasso/PicassoDrawable;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/squareup/picasso/PicassoDrawable;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/squareup/picasso/PicassoDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    sget-object v0, Lcom/squareup/picasso/PicassoDrawable;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/squareup/picasso/PicassoDrawable;->h:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget v1, v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v1, 0x41700000    # 15.0f

    iget v2, p0, Lcom/squareup/picasso/PicassoDrawable;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/squareup/picasso/PicassoDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method static a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
    .registers 13

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 48
    instance-of v0, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_e

    move-object v0, v3

    .line 49
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 51
    :cond_e
    new-instance v0, Lcom/squareup/picasso/PicassoDrawable;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/PicassoDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_14

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    :cond_14
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/squareup/picasso/PicassoDrawable;->c:Z

    if-nez v0, :cond_f

    .line 96
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    :cond_7
    :goto_7
    iget-boolean v0, p0, Lcom/squareup/picasso/PicassoDrawable;->f:Z

    if-eqz v0, :cond_e

    .line 119
    invoke-direct {p0, p1}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/graphics/Canvas;)V

    .line 121
    :cond_e
    return-void

    .line 98
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/picasso/PicassoDrawable;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2a

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/PicassoDrawable;->c:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 104
    :cond_2a
    iget-object v1, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 105
    iget-object v1, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_33
    iget v1, p0, Lcom/squareup/picasso/PicassoDrawable;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 109
    invoke-super {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget v0, p0, Lcom/squareup/picasso/PicassoDrawable;->d:I

    invoke-super {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_7

    .line 113
    invoke-virtual {p0}, Lcom/squareup/picasso/PicassoDrawable;->invalidateSelf()V

    goto :goto_7
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 142
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 143
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 124
    iput p1, p0, Lcom/squareup/picasso/PicassoDrawable;->d:I

    .line 125
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 128
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 129
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    return-void
.end method
