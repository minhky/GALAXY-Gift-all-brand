.class Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .prologue
    .line 188
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 189
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 193
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 198
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .prologue
    .line 203
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method
