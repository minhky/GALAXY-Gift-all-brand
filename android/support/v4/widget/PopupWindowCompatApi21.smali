.class Landroid/support/v4/widget/PopupWindowCompatApi21;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi21.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "mOverlapAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompatApi21;->a:Ljava/lang/reflect/Field;

    .line 33
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatApi21;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_11} :catch_12

    .line 37
    :goto_11
    return-void

    .line 34
    :catch_12
    move-exception v0

    .line 35
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method static a(Landroid/widget/PopupWindow;Z)V
    .registers 5

    .prologue
    .line 40
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatApi21;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 42
    :try_start_4
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatApi21;->a:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_d} :catch_e

    .line 47
    :cond_d
    :goto_d
    return-void

    .line 43
    :catch_e
    move-exception v0

    .line 44
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method static a(Landroid/widget/PopupWindow;)Z
    .registers 4

    .prologue
    .line 50
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatApi21;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    .line 52
    :try_start_4
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatApi21;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v0

    .line 57
    :goto_10
    return v0

    .line 53
    :catch_11
    move-exception v0

    .line 54
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not get overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1b
    const/4 v0, 0x0

    goto :goto_10
.end method
