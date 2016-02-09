.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 4
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .param p2, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 39
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 40
    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 3
    .param p1, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .prologue
    .line 55
    if-eqz p1, :cond_9

    .line 56
    check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .end local p1    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    .line 59
    :cond_9
    return-void
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .registers 5
    .param p0, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p1, "otherCodeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    const/4 v0, 0x0

    .line 231
    if-nez p1, :cond_4

    .line 238
    :cond_3
    :goto_3
    return v0

    .line 234
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 236
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .registers 5
    .param p0, "rowIndicatorRowNumber"    # I
    .param p1, "invalidRowCounts"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    .line 173
    if-nez p2, :cond_4

    move v0, p1

    .line 184
    .end local p1    # "invalidRowCounts":I
    .local v0, "invalidRowCounts":I
    :goto_3
    return v0

    .line 176
    .end local v0    # "invalidRowCounts":I
    .restart local p1    # "invalidRowCounts":I
    :cond_4
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-nez v1, :cond_14

    .line 177
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 178
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 179
    const/4 p1, 0x0

    :cond_14
    :goto_14
    move v0, p1

    .line 184
    .end local p1    # "invalidRowCounts":I
    .restart local v0    # "invalidRowCounts":I
    goto :goto_3

    .line 181
    .end local v0    # "invalidRowCounts":I
    .restart local p1    # "invalidRowCounts":I
    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_14
.end method

.method private adjustRowNumbers()I
    .registers 6

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v3

    .line 70
    .local v3, "unadjustedCount":I
    if-nez v3, :cond_8

    .line 71
    const/4 v3, 0x0

    .line 84
    .end local v3    # "unadjustedCount":I
    :cond_7
    return v3

    .line 73
    .restart local v3    # "unadjustedCount":I
    :cond_8
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_9
    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_7

    .line 74
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 75
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_18
    array-length v4, v1

    if-ge v2, v4, :cond_2e

    .line 76
    aget-object v4, v1, v2

    if-nez v4, :cond_22

    .line 75
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 79
    :cond_22
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 80
    invoke-direct {p0, v0, v2, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    goto :goto_1f

    .line 73
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .registers 15
    .param p1, "barcodeColumn"    # I
    .param p2, "codewordsRow"    # I
    .param p3, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    const/4 v10, 0x1

    .line 188
    aget-object v1, p3, p2

    .line 189
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .line 190
    .local v7, "previousColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v4, v7

    .line 191
    .local v4, "nextColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v9, p1, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_20

    .line 192
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v9, p1, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    .line 195
    :cond_20
    const/16 v8, 0xe

    new-array v6, v8, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 197
    .local v6, "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v8, 0x2

    aget-object v9, v7, p2

    aput-object v9, v6, v8

    .line 198
    const/4 v8, 0x3

    aget-object v9, v4, p2

    aput-object v9, v6, v8

    .line 200
    if-lez p2, :cond_45

    .line 201
    const/4 v8, 0x0

    add-int/lit8 v9, p2, -0x1

    aget-object v9, p3, v9

    aput-object v9, v6, v8

    .line 202
    const/4 v8, 0x4

    add-int/lit8 v9, p2, -0x1

    aget-object v9, v7, v9

    aput-object v9, v6, v8

    .line 203
    const/4 v8, 0x5

    add-int/lit8 v9, p2, -0x1

    aget-object v9, v4, v9

    aput-object v9, v6, v8

    .line 205
    :cond_45
    if-le p2, v10, :cond_5f

    .line 206
    const/16 v8, 0x8

    add-int/lit8 v9, p2, -0x2

    aget-object v9, p3, v9

    aput-object v9, v6, v8

    .line 207
    const/16 v8, 0xa

    add-int/lit8 v9, p2, -0x2

    aget-object v9, v7, v9

    aput-object v9, v6, v8

    .line 208
    const/16 v8, 0xb

    add-int/lit8 v9, p2, -0x2

    aget-object v9, v4, v9

    aput-object v9, v6, v8

    .line 210
    :cond_5f
    array-length v8, p3

    add-int/lit8 v8, v8, -0x1

    if-ge p2, v8, :cond_78

    .line 211
    add-int/lit8 v8, p2, 0x1

    aget-object v8, p3, v8

    aput-object v8, v6, v10

    .line 212
    const/4 v8, 0x6

    add-int/lit8 v9, p2, 0x1

    aget-object v9, v7, v9

    aput-object v9, v6, v8

    .line 213
    const/4 v8, 0x7

    add-int/lit8 v9, p2, 0x1

    aget-object v9, v4, v9

    aput-object v9, v6, v8

    .line 215
    :cond_78
    array-length v8, p3

    add-int/lit8 v8, v8, -0x2

    if-ge p2, v8, :cond_95

    .line 216
    const/16 v8, 0x9

    add-int/lit8 v9, p2, 0x2

    aget-object v9, p3, v9

    aput-object v9, v6, v8

    .line 217
    const/16 v8, 0xc

    add-int/lit8 v9, p2, 0x2

    aget-object v9, v7, v9

    aput-object v9, v6, v8

    .line 218
    const/16 v8, 0xd

    add-int/lit8 v9, p2, 0x2

    aget-object v9, v4, v9

    aput-object v9, v6, v8

    .line 220
    :cond_95
    move-object v0, v6

    .local v0, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_98
    if-ge v2, v3, :cond_a2

    aget-object v5, v0, v2

    .line 221
    .local v5, "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-static {v1, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 225
    .end local v5    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_a2
    return-void

    .line 220
    .restart local v5    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_98
.end method

.method private adjustRowNumbersByRow()I
    .registers 3

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()I

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    .local v0, "unadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private adjustRowNumbersFromBothRI()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 98
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v7

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_12

    .line 119
    :cond_11
    return v7

    .line 101
    :cond_12
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    .local v0, "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 103
    .local v1, "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "codewordsRow":I
    :goto_27
    array-length v5, v0

    if-ge v4, v5, :cond_11

    .line 104
    aget-object v5, v0, v4

    if-eqz v5, :cond_6f

    aget-object v5, v1, v4

    if-eqz v5, :cond_6f

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    if-ne v5, v6, :cond_6f

    .line 107
    const/4 v2, 0x1

    .local v2, "barcodeColumn":I
    :goto_41
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v2, v5, :cond_6f

    .line 108
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v3, v5, v4

    .line 109
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v3, :cond_54

    .line 107
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 112
    :cond_54
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-nez v5, :cond_51

    .line 114
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v4

    goto :goto_51

    .line 103
    .end local v2    # "barcodeColumn":I
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_27
.end method

.method private adjustRowNumbersFromLRI()I
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 148
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v8, v8, v7

    if-nez v8, :cond_9

    move v6, v7

    .line 169
    :cond_8
    return v6

    .line 151
    :cond_9
    const/4 v6, 0x0

    .line 152
    .local v6, "unadjustedCount":I
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v8, v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 153
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_13
    array-length v7, v2

    if-ge v3, v7, :cond_8

    .line 154
    aget-object v7, v2, v3

    if-nez v7, :cond_1d

    .line 153
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 157
    :cond_1d
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 158
    .local v5, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 159
    .local v4, "invalidRowCounts":I
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_25
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v0, v7, :cond_1a

    const/4 v7, 0x2

    if-ge v4, v7, :cond_1a

    .line 160
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v1, v7, v3

    .line 161
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_46

    .line 162
    invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 163
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_46

    .line 164
    add-int/lit8 v6, v6, 0x1

    .line 159
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method private adjustRowNumbersFromRRI()I
    .registers 10

    .prologue
    .line 123
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_c

    .line 124
    const/4 v6, 0x0

    .line 144
    :cond_b
    return v6

    .line 126
    :cond_c
    const/4 v6, 0x0

    .line 127
    .local v6, "unadjustedCount":I
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 128
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_1a
    array-length v7, v2

    if-ge v3, v7, :cond_b

    .line 129
    aget-object v7, v2, v3

    if-nez v7, :cond_24

    .line 128
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 132
    :cond_24
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 133
    .local v5, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 134
    .local v4, "invalidRowCounts":I
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v7, 0x1

    .local v0, "barcodeColumn":I
    :goto_2f
    if-lez v0, :cond_21

    const/4 v7, 0x2

    if-ge v4, v7, :cond_21

    .line 135
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v1, v7, v3

    .line 136
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_4c

    .line 137
    invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 138
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 134
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 3
    .param p1, "barcodeColumn"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 5

    .prologue
    .line 43
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 45
    const/16 v1, 0x3a0

    .line 48
    .local v1, "unadjustedCodewordCount":I
    :cond_15
    move v0, v1

    .line 49
    .local v0, "previousUnadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v1

    .line 50
    if-lez v1, :cond_1e

    if-lt v1, v0, :cond_15

    .line 51
    :cond_1e
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v2
.end method

.method public setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 2
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 255
    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 4
    .param p1, "barcodeColumn"    # I
    .param p2, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    .line 263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 271
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v6, v9

    .line 272
    .local v5, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-nez v5, :cond_10

    .line 273
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    aget-object v5, v6, v7

    .line 275
    :cond_10
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 276
    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_16
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_7c

    .line 277
    const-string v6, "CW %3d:"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 278
    const/4 v0, 0x0

    .local v0, "barcodeColumn":I
    :goto_2b
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x2

    if-ge v0, v6, :cond_72

    .line 279
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v0

    if-nez v6, :cond_41

    .line 280
    const-string v6, "    |   "

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 278
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 283
    :cond_41
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v1, v6, v2

    .line 284
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_55

    .line 285
    const-string v6, "    |   "

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3e

    .line 288
    :cond_55
    const-string v6, " %3d|%3d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3e

    .line 290
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_72
    const-string v6, "\n"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 292
    .end local v0    # "barcodeColumn":I
    :cond_7c
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 294
    return-object v4
.end method
