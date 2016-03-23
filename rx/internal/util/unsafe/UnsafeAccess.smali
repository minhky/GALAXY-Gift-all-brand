.class public final Lrx/internal/util/unsafe/UnsafeAccess;
.super Ljava/lang/Object;
.source "UnsafeAccess.java"


# static fields
.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 41
    .local v2, "u":Lsun/misc/Unsafe;
    :try_start_1
    const-class v3, Lsun/misc/Unsafe;

    const-string/jumbo v4, "theUnsafe"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 42
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lsun/misc/Unsafe;

    move-object v2, v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_1a

    .line 47
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_17
    sput-object v2, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    .line 48
    return-void

    .line 44
    :catch_1a
    move-exception v3

    goto :goto_17
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addressOf(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 101
    .local v1, "f":Ljava/lang/reflect/Field;
    sget-object v3, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v4

    return-wide v4

    .line 102
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    .line 104
    .local v2, "ie":Ljava/lang/InternalError;
    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    throw v2
.end method

.method public static compareAndSwapInt(Ljava/lang/Object;JII)Z
    .registers 12
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "expected"    # I
    .param p4, "newValue"    # I

    .prologue
    .line 85
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public static getAndAddInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "n"    # I

    .prologue
    .line 69
    :cond_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 70
    .local v4, "current":I
    add-int v5, v4, p3

    .line 71
    .local v5, "next":I
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return v4
.end method

.method public static getAndIncrementInt(Ljava/lang/Object;J)I
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 60
    :cond_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 61
    .local v4, "current":I
    add-int/lit8 v5, v4, 0x1

    .line 62
    .local v5, "next":I
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    return v4
.end method

.method public static getAndSetInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "newValue"    # I

    .prologue
    .line 78
    :cond_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 79
    .local v4, "current":I
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return v4
.end method

.method public static final isUnsafeAvailable()Z
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
