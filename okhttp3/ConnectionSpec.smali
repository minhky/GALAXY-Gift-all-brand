.class public final Lokhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# static fields
.field public static final a:Lokhttp3/ConnectionSpec;

.field public static final b:Lokhttp3/ConnectionSpec;

.field public static final c:Lokhttp3/ConnectionSpec;

.field private static final d:[Lokhttp3/CipherSuite;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    const/16 v0, 0xd

    new-array v0, v0, [Lokhttp3/CipherSuite;

    sget-object v1, Lokhttp3/CipherSuite;->aK:Lokhttp3/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/CipherSuite;->aO:Lokhttp3/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/CipherSuite;->W:Lokhttp3/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/CipherSuite;->am:Lokhttp3/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lokhttp3/CipherSuite;->al:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/CipherSuite;->av:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/CipherSuite;->aw:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/CipherSuite;->F:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/CipherSuite;->J:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/CipherSuite;->U:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/CipherSuite;->D:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/CipherSuite;->H:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/CipherSuite;->h:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/ConnectionSpec;->d:[Lokhttp3/CipherSuite;

    .line 65
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lokhttp3/ConnectionSpec;->d:[Lokhttp3/CipherSuite;

    .line 66
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->a([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->a:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->b:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->c:Lokhttp3/TlsVersion;

    aput-object v2, v1, v5

    .line 67
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->a([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->a(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->a:Lokhttp3/ConnectionSpec;

    .line 72
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->a:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    new-array v1, v3, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->c:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    .line 73
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->a([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->a(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->b:Lokhttp3/ConnectionSpec;

    .line 78
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->c:Lokhttp3/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lokhttp3/ConnectionSpec$Builder;)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lokhttp3/ConnectionSpec$Builder;->a(Lokhttp3/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec;->e:Z

    .line 87
    invoke-static {p1}, Lokhttp3/ConnectionSpec$Builder;->b(Lokhttp3/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lokhttp3/ConnectionSpec$Builder;->c(Lokhttp3/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lokhttp3/ConnectionSpec$Builder;->d(Lokhttp3/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec;->f:Z

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/ConnectionSpec$Builder;Lokhttp3/ConnectionSpec$1;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lokhttp3/ConnectionSpec;-><init>(Lokhttp3/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/ConnectionSpec;)Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->e:Z

    return v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 199
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    array-length v1, p0

    if-eqz v1, :cond_b

    array-length v1, p1

    if-nez v1, :cond_c

    .line 207
    :cond_b
    :goto_b
    return v0

    .line 202
    :cond_c
    array-length v2, p0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_b

    aget-object v3, p0, v1

    .line 203
    invoke-static {p1, v3}, Lokhttp3/internal/Util;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 204
    const/4 v0, 0x1

    goto :goto_b

    .line 202
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;
    .registers 7

    .prologue
    .line 145
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4d

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 148
    :goto_13
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    if-eqz v0, :cond_53

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Util;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 154
    :goto_25
    if-eqz p2, :cond_3b

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 155
    const-string/jumbo v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_3b
    new-instance v2, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    .line 159
    invoke-virtual {v2, v1}, Lokhttp3/ConnectionSpec$Builder;->a([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionSpec$Builder;->b([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 158
    return-object v0

    .line 147
    :cond_4d
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13

    .line 150
    :cond_53
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method static synthetic b(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/ConnectionSpec;)Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->f:Z

    return v0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lokhttp3/ConnectionSpec;->b(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 132
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 133
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 135
    :cond_d
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 136
    iget-object v0, v0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 138
    :cond_16
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->e:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->e:Z

    if-nez v1, :cond_6

    .line 190
    :cond_5
    :goto_5
    return v0

    .line 180
    :cond_6
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/ConnectionSpec;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    :cond_16
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/ConnectionSpec;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    :cond_26
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 107
    :goto_5
    return-object v0

    .line 103
    :cond_6
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lokhttp3/CipherSuite;

    .line 104
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 105
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lokhttp3/CipherSuite;->a(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 107
    :cond_1e
    invoke-static {v1}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 121
    :goto_5
    return-object v0

    .line 117
    :cond_6
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lokhttp3/TlsVersion;

    .line 118
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 119
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lokhttp3/TlsVersion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 121
    :cond_1e
    invoke-static {v1}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    instance-of v2, p1, Lokhttp3/ConnectionSpec;

    if-nez v2, :cond_7

    .line 223
    :cond_6
    :goto_6
    return v0

    .line 212
    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    goto :goto_6

    .line 214
    :cond_b
    check-cast p1, Lokhttp3/ConnectionSpec;

    .line 215
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec;->e:Z

    iget-boolean v3, p1, Lokhttp3/ConnectionSpec;->e:Z

    if-ne v2, v3, :cond_6

    .line 217
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec;->e:Z

    if-eqz v2, :cond_31

    .line 218
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec;->f:Z

    iget-boolean v3, p1, Lokhttp3/ConnectionSpec;->f:Z

    if-ne v2, v3, :cond_6

    :cond_31
    move v0, v1

    .line 223
    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 227
    const/16 v0, 0x11

    .line 228
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->e:Z

    if-eqz v1, :cond_1f

    .line 229
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 230
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->f:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_1e
    add-int/2addr v0, v1

    .line 233
    :cond_1f
    return v0

    .line 231
    :cond_20
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 237
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->e:Z

    if-nez v0, :cond_8

    .line 238
    const-string/jumbo v0, "ConnectionSpec()"

    .line 243
    :goto_7
    return-object v0

    .line 241
    :cond_8
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->g:[Ljava/lang/String;

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_14
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->h:[Ljava/lang/String;

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 241
    :cond_54
    const-string/jumbo v0, "[all enabled]"

    goto :goto_14

    .line 242
    :cond_58
    const-string/jumbo v1, "[all enabled]"

    goto :goto_20
.end method
