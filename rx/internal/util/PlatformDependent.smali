.class public final Lrx/internal/util/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final a:I

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lrx/internal/util/PlatformDependent;->d()I

    move-result v0

    sput v0, Lrx/internal/util/PlatformDependent;->a:I

    .line 35
    sget v0, Lrx/internal/util/PlatformDependent;->a:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lrx/internal/util/PlatformDependent;->b:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lrx/internal/util/PlatformDependent;->b:Z

    return v0
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 51
    sget v0, Lrx/internal/util/PlatformDependent;->a:I

    return v0
.end method

.method static c()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 79
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 81
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lrx/internal/util/PlatformDependent$1;

    invoke-direct {v0}, Lrx/internal/util/PlatformDependent$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_a
.end method

.method private static d()I
    .registers 3

    .prologue
    .line 63
    :try_start_0
    const-string/jumbo v0, "android.os.Build$VERSION"

    const/4 v1, 0x1

    invoke-static {}, Lrx/internal/util/PlatformDependent;->c()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 70
    :goto_1e
    return v0

    .line 67
    :catch_1f
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_1e
.end method
