.class Lokhttp3/internal/JdkWithJettyBootPlatform;
.super Lokhttp3/internal/Platform;
.source "JdkWithJettyBootPlatform.java"


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lokhttp3/internal/Platform;-><init>()V

    .line 38
    iput-object p1, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->a:Ljava/lang/reflect/Method;

    .line 39
    iput-object p2, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->b:Ljava/lang/reflect/Method;

    .line 40
    iput-object p3, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->c:Ljava/lang/reflect/Method;

    .line 41
    iput-object p4, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->d:Ljava/lang/Class;

    .line 42
    iput-object p5, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->e:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method public static b()Lokhttp3/internal/Platform;
    .registers 9

    .prologue
    .line 84
    :try_start_0
    const-string/jumbo v0, "org.eclipse.jetty.alpn.ALPN"

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "$ClientProvider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "$ServerProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 89
    const-string/jumbo v0, "put"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object v1, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    const-string/jumbo v0, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    const-string/jumbo v0, "remove"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 92
    new-instance v0, Lokhttp3/internal/JdkWithJettyBootPlatform;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_84} :catch_85
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_84} :catch_88

    .line 97
    :goto_84
    return-object v0

    .line 94
    :catch_85
    move-exception v0

    .line 97
    :goto_86
    const/4 v0, 0x0

    goto :goto_84

    .line 94
    :catch_88
    move-exception v0

    goto :goto_86
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 68
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 69
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;

    .line 70
    invoke-static {v0}, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->a(Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {v0}, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->b(Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 71
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v0

    const/4 v2, 0x4

    const-string/jumbo v3, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/internal/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :goto_2c
    return-object v1

    :cond_2d
    invoke-static {v0}, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->a(Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v0, v1

    :goto_34
    move-object v1, v0

    goto :goto_2c

    :cond_36
    invoke-static {v0}, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->b(Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_39} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_39} :catch_3b

    move-result-object v0

    goto :goto_34

    .line 76
    :catch_3b
    move-exception v0

    .line 77
    :goto_3c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :catch_42
    move-exception v0

    goto :goto_3c
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p3}, Lokhttp3/internal/JdkWithJettyBootPlatform;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 50
    :try_start_4
    const-class v1, Lokhttp3/internal/Platform;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->d:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->e:Ljava/lang/Class;

    aput-object v4, v2, v3

    new-instance v3, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;

    invoke-direct {v3, v0}, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2f} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2f} :catch_30

    .line 56
    return-void

    .line 53
    :catch_30
    move-exception v0

    .line 54
    :goto_31
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 53
    :catch_37
    move-exception v0

    goto :goto_31
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 6

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_14

    .line 64
    return-void

    .line 61
    :catch_d
    move-exception v0

    .line 62
    :goto_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :catch_14
    move-exception v0

    goto :goto_e
.end method
