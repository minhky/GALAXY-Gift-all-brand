.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->f:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private a([BI)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 117
    array-length v2, p1

    .line 119
    new-array v3, v2, [I

    move v1, v0

    .line 120
    :goto_5
    if-ge v1, v2, :cond_10

    .line 121
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 123
    :cond_10
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 125
    :try_start_12
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a([II)V
    :try_end_17
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_12 .. :try_end_17} :catch_21

    .line 131
    :goto_17
    if-ge v0, p2, :cond_27

    .line 132
    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 126
    :catch_21
    move-exception v0

    .line 127
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 134
    :cond_27
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 76
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->a()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->b()[B

    move-result-object v0

    .line 81
    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->a([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v3

    .line 83
    array-length v4, v3

    .line 87
    array-length v5, v3

    move v0, v1

    move v2, v1

    :goto_16
    if-ge v0, v5, :cond_22

    aget-object v6, v3, v0

    .line 88
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->a()I

    move-result v6

    add-int/2addr v2, v6

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 90
    :cond_22
    new-array v5, v2, [B

    move v0, v1

    .line 93
    :goto_25
    if-ge v0, v4, :cond_44

    .line 94
    aget-object v2, v3, v0

    .line 95
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b()[B

    move-result-object v6

    .line 96
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->a()I

    move-result v7

    .line 97
    invoke-direct {p0, v6, v7}, Lcom/google/zxing/datamatrix/decoder/Decoder;->a([BI)V

    move v2, v1

    .line 98
    :goto_35
    if-ge v2, v7, :cond_41

    .line 100
    mul-int v8, v2, v4

    add-int/2addr v8, v0

    aget-byte v9, v6, v2

    aput-byte v9, v5, v8

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 93
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 105
    :cond_44
    invoke-static {v5}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->a([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
