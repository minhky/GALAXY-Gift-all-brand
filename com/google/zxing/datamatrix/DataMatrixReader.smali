.class public final Lcom/google/zxing/datamatrix/DataMatrixReader;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 16
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v4

    .line 105
    .local v4, "leftTopBlack":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v10

    .line 106
    .local v10, "rightBottomBlack":[I
    if-eqz v4, :cond_c

    if-nez v10, :cond_11

    .line 107
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 110
    :cond_11
    invoke-static {v4, p0}, Lcom/google/zxing/datamatrix/DataMatrixReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)I

    move-result v7

    .line 112
    .local v7, "moduleSize":I
    const/4 v14, 0x1

    aget v11, v4, v14

    .line 113
    .local v11, "top":I
    const/4 v14, 0x1

    aget v1, v10, v14

    .line 114
    .local v1, "bottom":I
    const/4 v14, 0x0

    aget v3, v4, v14

    .line 115
    .local v3, "left":I
    const/4 v14, 0x0

    aget v9, v10, v14

    .line 117
    .local v9, "right":I
    sub-int v14, v9, v3

    add-int/lit8 v14, v14, 0x1

    div-int v6, v14, v7

    .line 118
    .local v6, "matrixWidth":I
    sub-int v14, v1, v11

    add-int/lit8 v14, v14, 0x1

    div-int v5, v14, v7

    .line 119
    .local v5, "matrixHeight":I
    if-lez v6, :cond_31

    if-gtz v5, :cond_36

    .line 120
    :cond_31
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 126
    :cond_36
    shr-int/lit8 v8, v7, 0x1

    .line 127
    .local v8, "nudge":I
    add-int/2addr v11, v8

    .line 128
    add-int/2addr v3, v8

    .line 131
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v6, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 132
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_40
    if-ge v13, v5, :cond_5b

    .line 133
    mul-int v14, v13, v7

    add-int v2, v11, v14

    .line 134
    .local v2, "iOffset":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_47
    if-ge v12, v6, :cond_58

    .line 135
    mul-int v14, v12, v7

    add-int/2addr v14, v3

    invoke-virtual {p0, v14, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 136
    invoke-virtual {v0, v12, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 134
    :cond_55
    add-int/lit8 v12, v12, 0x1

    goto :goto_47

    .line 132
    :cond_58
    add-int/lit8 v13, v13, 0x1

    goto :goto_40

    .line 140
    .end local v2    # "iOffset":I
    .end local v12    # "x":I
    :cond_5b
    return-object v0
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)I
    .registers 8
    .param p0, "leftTopBlack"    # [I
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 145
    .local v1, "width":I
    aget v2, p0, v5

    .line 146
    .local v2, "x":I
    const/4 v4, 0x1

    aget v3, p0, v4

    .line 147
    .local v3, "y":I
    :goto_a
    if-ge v2, v1, :cond_15

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 150
    :cond_15
    if-ne v2, v1, :cond_1c

    .line 151
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 154
    :cond_1c
    aget v4, p0, v5

    sub-int v0, v2, v4

    .line 155
    .local v0, "moduleSize":I
    if-nez v0, :cond_27

    .line 156
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 158
    :cond_27
    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/DataMatrixReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 13
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_40

    sget-object v7, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 68
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/datamatrix/DataMatrixReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 69
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    iget-object v7, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {v7, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 70
    .local v2, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v5, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 76
    .end local v0    # "bits":Lcom/google/zxing/common/BitMatrix;
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    :goto_1a
    new-instance v6, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v7, v8, v5, v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 78
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v1, :cond_34

    .line 80
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v7, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_34
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "ecLevel":Ljava/lang/String;
    if-eqz v4, :cond_3f

    .line 84
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v7, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_3f
    return-object v6

    .line 72
    .end local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v4    # "ecLevel":Ljava/lang/String;
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v6    # "result":Lcom/google/zxing/Result;
    :cond_40
    new-instance v7, Lcom/google/zxing/datamatrix/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/datamatrix/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v3

    .line 73
    .local v3, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    iget-object v7, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 74
    .restart local v2    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .restart local v5    # "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_1a
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method