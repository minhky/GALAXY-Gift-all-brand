.class public final Landroid/support/v4/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# static fields
.field static final a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 174
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    .line 182
    :goto_d
    return-void

    .line 175
    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 176
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d

    .line 177
    :cond_1a
    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    .line 178
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d

    .line 180
    :cond_26
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    goto :goto_d
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .registers 3

    .prologue
    .line 239
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->a(Landroid/widget/PopupWindow;I)V

    .line 240
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 11

    .prologue
    .line 206
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 207
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .registers 3

    .prologue
    .line 216
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->a:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;->a(Landroid/widget/PopupWindow;Z)V

    .line 217
    return-void
.end method
