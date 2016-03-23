.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.78f

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 54
    new-array v0, v3, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 66
    new-array v0, v4, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_bc

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_ca

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_d8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_f4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_102

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    .line 54
    :array_6e
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    .line 65
    :array_7c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_88
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    .line 71
    :array_92
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_ae
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_bc
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_ca
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_d8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_e6
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_f4
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_102
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .registers 8
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    const v1, 0x3ec28f5c

    .line 340
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 341
    .local v0, "bestMatch":I
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    .line 342
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v3, :cond_1e

    .line 343
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    .line 344
    .local v4, "pattern":[I
    const v6, 0x3f47ae14

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 345
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1b

    .line 346
    move v1, v5

    .line 347
    move v0, v2

    .line 342
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 350
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_1e
    if-ltz v0, :cond_21

    .line 351
    return v0

    .line 353
    :cond_21
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .registers 14
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    .line 150
    const/16 v7, 0xa

    new-array v3, v7, [I

    .line 151
    .local v3, "counterDigitPair":[I
    new-array v1, v9, [I

    .line 152
    .local v1, "counterBlack":[I
    new-array v4, v9, [I

    .line 154
    .local v4, "counterWhite":[I
    :cond_9
    if-ge p1, p2, :cond_3e

    .line 157
    invoke-static {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 159
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_f
    if-ge v5, v9, :cond_20

    .line 160
    mul-int/lit8 v6, v5, 0x2

    .line 161
    .local v6, "twoK":I
    aget v7, v3, v6

    aput v7, v1, v5

    .line 162
    add-int/lit8 v7, v6, 0x1

    aget v7, v3, v7

    aput v7, v4, v5

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 165
    .end local v6    # "twoK":I
    :cond_20
    invoke-static {v1}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 166
    .local v0, "bestMatch":I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 168
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    array-length v8, v3

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v8, :cond_9

    aget v2, v3, v7

    .line 171
    .local v2, "counterDigit":I
    add-int/2addr p1, v2

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 174
    .end local v0    # "bestMatch":I
    .end local v2    # "counterDigit":I
    .end local v5    # "k":I
    :cond_3e
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .registers 15
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 300
    array-length v3, p2

    .line 301
    .local v3, "patternLength":I
    new-array v1, v3, [I

    .line 302
    .local v1, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 303
    .local v5, "width":I
    const/4 v2, 0x0

    .line 305
    .local v2, "isWhite":Z
    const/4 v0, 0x0

    .line 306
    .local v0, "counterPosition":I
    move v4, p1

    .line 307
    .local v4, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_e
    if-ge v6, v5, :cond_59

    .line 308
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_20

    .line 309
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 307
    :goto_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 311
    :cond_20
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_54

    .line 312
    const v9, 0x3f47ae14

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ec28f5c

    cmpg-float v9, v9, v10

    if-gez v9, :cond_39

    .line 313
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 315
    :cond_39
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 316
    add-int/lit8 v9, v3, -0x2

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    add-int/lit8 v9, v3, -0x2

    aput v8, v1, v9

    .line 318
    add-int/lit8 v9, v3, -0x1

    aput v8, v1, v9

    .line 319
    add-int/lit8 v0, v0, -0x1

    .line 323
    :goto_4e
    aput v7, v1, v0

    .line 324
    if-nez v2, :cond_57

    move v2, v7

    :goto_53
    goto :goto_1d

    .line 321
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_57
    move v2, v8

    .line 324
    goto :goto_53

    .line 327
    :cond_59
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .registers 4
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 241
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 242
    .local v0, "endStart":I
    if-ne v0, v1, :cond_10

    .line 243
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 246
    :cond_10
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .registers 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 215
    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    .line 218
    .local v1, "quietCount":I
    if-ge v1, p2, :cond_19

    .line 220
    :goto_6
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_8
    if-lez v1, :cond_12

    if-ltz v0, :cond_12

    .line 221
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 226
    :cond_12
    if-eqz v1, :cond_20

    .line 228
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .end local v0    # "i":I
    :cond_19
    move v1, p2

    .line 218
    goto :goto_6

    .line 224
    .restart local v0    # "i":I
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 230
    :cond_20
    return-void
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .registers 8
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 263
    :try_start_3
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v1

    .line 264
    .local v1, "endStart":I
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 269
    .local v0, "endPattern":[I
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 274
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 275
    .local v2, "temp":I
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 276
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    .line 281
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    .end local v0    # "endPattern":[I
    .end local v1    # "endStart":I
    .end local v2    # "temp":I
    :catchall_2d
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v3
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 22
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v10

    .line 90
    .local v10, "startRange":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 92
    .local v4, "endRange":[I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v8, "result":Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    aget v11, v10, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12, v8}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 97
    .local v3, "allowedLengths":[I
    if-eqz p3, :cond_36

    .line 98
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    .line 101
    :cond_36
    if-nez v3, :cond_3a

    .line 102
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 107
    :cond_3a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 108
    .local v5, "length":I
    const/4 v6, 0x0

    .line 109
    .local v6, "lengthOK":Z
    const/4 v7, 0x0

    .line 110
    .local v7, "maxAllowedLength":I
    array-length v12, v3

    const/4 v11, 0x0

    :goto_42
    if-ge v11, v12, :cond_49

    aget v2, v3, v11

    .line 111
    .local v2, "allowedLength":I
    if-ne v5, v2, :cond_55

    .line 112
    const/4 v6, 0x1

    .line 119
    .end local v2    # "allowedLength":I
    :cond_49
    if-nez v6, :cond_4e

    if-le v5, v7, :cond_4e

    .line 120
    const/4 v6, 0x1

    .line 122
    :cond_4e
    if-nez v6, :cond_5b

    .line 123
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    .line 115
    .restart local v2    # "allowedLength":I
    :cond_55
    if-le v2, v7, :cond_58

    .line 116
    move v7, v2

    .line 110
    :cond_58
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    .line 126
    .end local v2    # "allowedLength":I
    :cond_5b
    new-instance v11, Lcom/google/zxing/Result;

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    aget v16, v4, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v9, v12, v13, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v11
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .registers 7
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 186
    .local v0, "endStart":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 191
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 193
    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 195
    return-object v1
.end method
