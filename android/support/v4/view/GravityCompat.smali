.class public final Landroid/support/v4/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 91
    new-instance v0, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;

    invoke-direct {v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;-><init>()V

    sput-object v0, Landroid/support/v4/view/GravityCompat;->a:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    .line 95
    :goto_d
    return-void

    .line 93
    :cond_e
    new-instance v0, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/GravityCompat;->a:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    goto :goto_d
.end method

.method public static a(II)I
    .registers 3

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/GravityCompat;->a:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImpl;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13

    .prologue
    .line 132
    sget-object v0, Landroid/support/v4/view/GravityCompat;->a:Landroid/support/v4/view/GravityCompat$GravityCompatImpl;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/GravityCompat$GravityCompatImpl;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 133
    return-void
.end method
