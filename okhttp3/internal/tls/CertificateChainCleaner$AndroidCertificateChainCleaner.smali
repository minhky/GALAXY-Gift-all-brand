.class final Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "CertificateChainCleaner.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3

    .prologue
    .line 160
    invoke-direct {p0}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 161
    iput-object p1, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->a:Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->b:Ljava/lang/reflect/Method;

    .line 163
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 170
    iget-object v1, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->a:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string/jumbo v4, "RSA"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_25} :catch_34

    return-object v0

    .line 172
    :catch_26
    move-exception v0

    .line 173
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v1

    .line 176
    :catch_34
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
