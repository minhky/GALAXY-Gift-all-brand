.class Landroid/support/v4/view/ViewCompatLollipop;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static a()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 252
    sget-object v0, Landroid/support/v4/view/ViewCompatLollipop;->a:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 253
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompatLollipop;->a:Ljava/lang/ThreadLocal;

    .line 255
    :cond_b
    sget-object v0, Landroid/support/v4/view/ViewCompatLollipop;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 256
    if-nez v0, :cond_1f

    .line 257
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 258
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 260
    :cond_1f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 261
    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 128
    instance-of v0, p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 130
    check-cast v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompatApi21;->g()Landroid/view/WindowInsets;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 134
    if-eq v1, v0, :cond_16

    .line 136
    new-instance p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    invoke-direct {p1, v1}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    .line 139
    :cond_16
    return-object p1
.end method

.method public static a(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 42
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 46
    return-void
.end method

.method static a(Landroid/view/View;I)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-static {}, Landroid/support/v4/view/ViewCompatLollipop;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 206
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_5d

    move-object v0, v1

    .line 207
    check-cast v0, Landroid/view/View;

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x1

    .line 216
    :goto_3a
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompatHC;->a(Landroid/view/View;I)V

    .line 220
    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 222
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 224
    :cond_5a
    return-void

    :cond_5b
    move v0, v2

    .line 211
    goto :goto_3a

    :cond_5d
    move v0, v2

    goto :goto_3a
.end method

.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2e

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 96
    :goto_1a
    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2e

    .line 97
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 100
    :cond_2b
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_2e
    return-void

    .line 94
    :cond_2f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2e

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 118
    :goto_1a
    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2e

    .line 119
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 122
    :cond_2b
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_2e
    return-void

    .line 116
    :cond_2f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .prologue
    .line 62
    if-nez p1, :cond_7

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 77
    :goto_6
    return-void

    .line 65
    :cond_7
    new-instance v0, Landroid/support/v4/view/ViewCompatLollipop$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewCompatLollipop$1;-><init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_6
.end method

.method public static b(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 143
    instance-of v0, p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 145
    check-cast v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompatApi21;->g()Landroid/view/WindowInsets;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 149
    if-eq v1, v0, :cond_16

    .line 151
    new-instance p1, Landroid/support/v4/view/WindowInsetsCompatApi21;

    invoke-direct {p1, v1}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    .line 154
    :cond_16
    return-object p1
.end method

.method static b(Landroid/view/View;I)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-static {}, Landroid/support/v4/view/ViewCompatLollipop;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 231
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_5d

    move-object v0, v1

    .line 232
    check-cast v0, Landroid/view/View;

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x1

    .line 241
    :goto_3a
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompatHC;->b(Landroid/view/View;I)V

    .line 245
    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 247
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 249
    :cond_5a
    return-void

    :cond_5b
    move v0, v2

    .line 236
    goto :goto_3a

    :cond_5d
    move v0, v2

    goto :goto_3a
.end method

.method public static c(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 171
    return-void
.end method

.method public static h(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method
