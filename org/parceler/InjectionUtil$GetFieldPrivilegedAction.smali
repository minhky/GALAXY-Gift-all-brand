.class final Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;
.super Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/InjectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetFieldPrivilegedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction",
        "<TT;",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field private final target:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 3
    .param p1, "classField"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 71
    .local p0, "this":Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;, "Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction<TT;>;"
    invoke-direct {p0, p1}, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 72
    iput-object p2, p0, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;->target:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/reflect/Field;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/parceler/InjectionUtil$1;

    .prologue
    .line 66
    .local p0, "this":Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;, "Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;, "Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction<TT;>;"
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;->run(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3
    .param p1, "classField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;, "Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction<TT;>;"
    iget-object v0, p0, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;->target:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
