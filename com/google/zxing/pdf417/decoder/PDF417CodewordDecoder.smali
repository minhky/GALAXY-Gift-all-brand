.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;
.source "PDF417CodewordDecoder.java"


# static fields
.field private static final RATIOS_TABLE:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x8

    .line 27
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v5, v5

    filled-new-array {v5, v8}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    sput-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v5, v5

    if-ge v2, v5, :cond_43

    .line 33
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v1, v5, v2

    .line 34
    .local v1, "currentSymbol":I
    and-int/lit8 v0, v1, 0x1

    .line 35
    .local v0, "currentBit":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_20
    if-ge v3, v8, :cond_40

    .line 36
    const/4 v4, 0x0

    .line 37
    .local v4, "size":F
    :goto_23
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v0, :cond_2d

    .line 38
    const/high16 v5, 0x3f800000

    add-float/2addr v4, v5

    .line 39
    shr-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 41
    :cond_2d
    and-int/lit8 v0, v1, 0x1

    .line 42
    sget-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v5, v5, v2

    rsub-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, -0x1

    const/high16 v7, 0x41880000

    div-float v7, v4, v7

    aput v7, v5, v6

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 32
    .end local v4    # "size":F
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 45
    .end local v0    # "currentBit":I
    .end local v1    # "currentSymbol":I
    .end local v3    # "j":I
    :cond_43
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static getBitValue([I)I
    .registers 11
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/4 v5, 0x1

    .line 82
    const-wide/16 v2, 0x0

    .line 83
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v4, p0

    if-ge v1, v4, :cond_1e

    .line 84
    const/4 v0, 0x0

    .local v0, "bit":I
    :goto_8
    aget v4, p0, v1

    if-ge v0, v4, :cond_1b

    .line 85
    shl-long v6, v2, v5

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_19

    move v4, v5

    :goto_13
    int-to-long v8, v4

    or-long v2, v6, v8

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 85
    :cond_19
    const/4 v4, 0x0

    goto :goto_13

    .line 83
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 88
    .end local v0    # "bit":I
    :cond_1e
    long-to-int v4, v2

    return v4
.end method

.method private static getClosestDecodedValue([I)I
    .registers 13
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/16 v11, 0x8

    .line 92
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v3

    .line 93
    .local v3, "bitCountSum":I
    new-array v2, v11, [F

    .line 94
    .local v2, "bitCountRatios":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    array-length v9, v2

    if-ge v6, v9, :cond_16

    .line 95
    aget v9, p0, v6

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    aput v9, v2, v6

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 97
    :cond_16
    const v1, 0x7f7fffff

    .line 98
    .local v1, "bestMatchError":F
    const/4 v0, -0x1

    .line 99
    .local v0, "bestMatch":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1b
    sget-object v9, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v9, v9

    if-ge v7, v9, :cond_40

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, "error":F
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_22
    if-ge v8, v11, :cond_34

    .line 102
    sget-object v9, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v9, v9, v7

    aget v9, v9, v8

    aget v10, v2, v8

    sub-float v4, v9, v10

    .line 103
    .local v4, "diff":F
    mul-float v9, v4, v4

    add-float/2addr v5, v9

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 105
    .end local v4    # "diff":F
    :cond_34
    cmpg-float v9, v5, v1

    if-gez v9, :cond_3d

    .line 106
    move v1, v5

    .line 107
    sget-object v9, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v0, v9, v7

    .line 99
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 110
    .end local v5    # "error":F
    .end local v8    # "k":I
    :cond_40
    return v0
.end method

.method private static getDecodedCodewordValue([I)I
    .registers 5
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/4 v1, -0x1

    .line 77
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getBitValue([I)I

    move-result v0

    .line 78
    .local v0, "decodedValue":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(J)I

    move-result v2

    if-ne v2, v1, :cond_d

    move v0, v1

    .end local v0    # "decodedValue":I
    :cond_d
    return v0
.end method

.method static getDecodedValue([I)I
    .registers 3
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->sampleBitCounts([I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedCodewordValue([I)I

    move-result v0

    .line 52
    .local v0, "decodedValue":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 55
    .end local v0    # "decodedValue":I
    :goto_b
    return v0

    .restart local v0    # "decodedValue":I
    :cond_c
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getClosestDecodedValue([I)I

    move-result v0

    goto :goto_b
.end method

.method private static sampleBitCounts([I)[I
    .registers 10
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v6

    int-to-float v1, v6

    .line 60
    .local v1, "bitCountSum":F
    const/16 v6, 0x8

    new-array v3, v6, [I

    .line 61
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 62
    .local v0, "bitCountIndex":I
    const/4 v5, 0x0

    .line 63
    .local v5, "sumPreviousBits":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v6, 0x11

    if-ge v2, v6, :cond_31

    .line 64
    const/high16 v6, 0x42080000

    div-float v6, v1, v6

    int-to-float v7, v2

    mul-float/2addr v7, v1

    const/high16 v8, 0x41880000

    div-float/2addr v7, v8

    add-float v4, v6, v7

    .line 67
    .local v4, "sampleIndex":F
    aget v6, p0, v0

    add-int/2addr v6, v5

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_28

    .line 68
    aget v6, p0, v0

    add-int/2addr v5, v6

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_28
    aget v6, v3, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v0

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 73
    .end local v4    # "sampleIndex":F
    :cond_31
    return-object v3
.end method