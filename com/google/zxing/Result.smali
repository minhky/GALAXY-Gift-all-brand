.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private c:[Lcom/google/zxing/ResultPoint;

.field private final d:Lcom/google/zxing/BarcodeFormat;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .registers 13

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .registers 8

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/Result;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/zxing/Result;->b:[B

    .line 50
    iput-object p3, p0, Lcom/google/zxing/Result;->c:[Lcom/google/zxing/ResultPoint;

    .line 51
    iput-object p4, p0, Lcom/google/zxing/Result;->d:Lcom/google/zxing/BarcodeFormat;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    .line 53
    iput-wide p5, p0, Lcom/google/zxing/Result;->f:J

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/zxing/Result;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 97
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p1, :cond_8

    .line 104
    iget-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 105
    iput-object p1, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    .line 110
    :cond_8
    :goto_8
    return-void

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_8
.end method

.method public a([Lcom/google/zxing/ResultPoint;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/zxing/Result;->c:[Lcom/google/zxing/ResultPoint;

    .line 114
    if-nez v0, :cond_8

    .line 115
    iput-object p1, p0, Lcom/google/zxing/Result;->c:[Lcom/google/zxing/ResultPoint;

    .line 122
    :cond_7
    :goto_7
    return-void

    .line 116
    :cond_8
    if-eqz p1, :cond_7

    array-length v1, p1

    if-lez v1, :cond_7

    .line 117
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 118
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v1, p0, Lcom/google/zxing/Result;->c:[Lcom/google/zxing/ResultPoint;

    goto :goto_7
.end method

.method public b()[B
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/Result;->b:[B

    return-object v0
.end method

.method public c()[Lcom/google/zxing/ResultPoint;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/zxing/Result;->c:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method public d()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/zxing/Result;->d:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/zxing/Result;->e:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/zxing/Result;->a:Ljava/lang/String;

    return-object v0
.end method
