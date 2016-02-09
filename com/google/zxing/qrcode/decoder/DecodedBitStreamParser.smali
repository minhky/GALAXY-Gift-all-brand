.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 18
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 61
    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v4, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 65
    .local v3, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v7, 0x0

    .line 69
    .local v7, "fc1InEffect":Z
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/4 v12, 0x4

    if-ge v5, v12, :cond_42

    .line 71
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 75
    .local v9, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_1d
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v9, v5, :cond_2a

    .line 76
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v9, v5, :cond_29

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_4c

    .line 78
    :cond_29
    const/4 v7, 0x1

    .line 120
    :cond_2a
    :goto_2a
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_2c} :catch_5d

    if-ne v9, v5, :cond_14

    .line 126
    new-instance v12, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v4, 0x0

    .end local v4    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3b
    if-nez p2, :cond_c6

    const/4 v5, 0x0

    :goto_3e
    invoke-direct {v12, p0, v13, v4, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v12

    .line 73
    .end local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v4    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_42
    const/4 v5, 0x4

    :try_start_43
    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v9

    .restart local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_1d

    .line 79
    :cond_4c
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_69

    .line 80
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v12, 0x10

    if-ge v5, v12, :cond_63

    .line 81
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_5d} :catch_5d

    .line 121
    .end local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_5d
    move-exception v8

    .line 123
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 85
    .end local v8    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_63
    const/16 v5, 0x10

    :try_start_65
    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_2a

    .line 86
    :cond_69
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_7c

    .line 88
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v11

    .line 89
    .local v11, "value":I
    invoke-static {v11}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 90
    if-nez v3, :cond_2a

    .line 91
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 95
    .end local v11    # "value":I
    :cond_7c
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_94

    .line 97
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    .line 98
    .local v10, "subset":I
    invoke-virtual {v9, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    .line 99
    .local v6, "countHanzi":I
    const/4 v5, 0x1

    if-ne v10, v5, :cond_2a

    .line 100
    invoke-static {v0, v1, v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_2a

    .line 105
    .end local v6    # "countHanzi":I
    .end local v10    # "subset":I
    :cond_94
    invoke-virtual {v9, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 106
    .local v2, "count":I
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_a4

    .line 107
    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_2a

    .line 108
    :cond_a4
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_ad

    .line 109
    invoke-static {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto/16 :goto_2a

    .line 110
    :cond_ad
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_b8

    move-object/from16 v5, p3

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto/16 :goto_2a

    .line 112
    :cond_b8
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v9, v5, :cond_c1

    .line 113
    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_2a

    .line 115
    :cond_c1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
    :try_end_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_c6} :catch_5d

    .line 126
    .end local v2    # "count":I
    .end local v4    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_c6
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3e
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .registers 12
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25

    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 254
    .local v2, "start":I
    :goto_a
    if-le p2, v4, :cond_30

    .line 255
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_17

    .line 256
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 258
    :cond_17
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 259
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    rem-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 p2, p2, -0x2

    .line 262
    goto :goto_a

    .line 263
    .end local v1    # "nextTwoCharsBits":I
    :cond_30
    if-ne p2, v4, :cond_48

    .line 265
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_3d

    .line 266
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 268
    :cond_3d
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :cond_48
    if-eqz p3, :cond_75

    .line 273
    move v0, v2

    .local v0, "i":I
    :goto_4b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_75

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6c

    .line 275
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6f

    .line 277
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 280
    :cond_6f
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6c

    .line 285
    .end local v0    # "i":I
    :cond_75
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 12
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 214
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v4, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_d

    .line 215
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 218
    :cond_d
    new-array v3, p2, [B

    .line 219
    .local v3, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, p2, :cond_1e

    .line 220
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 223
    :cond_1e
    if-nez p3, :cond_30

    .line 229
    invoke-static {v3, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "encoding":Ljava/lang/String;
    :goto_24
    :try_start_24
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_35

    .line 238
    invoke-interface {p4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    return-void

    .line 231
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_30
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_24

    .line 235
    :catch_35
    move-exception v2

    .line 236
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 139
    mul-int/lit8 v5, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-le v5, v6, :cond_d

    .line 140
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 145
    :cond_d
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 146
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 147
    .local v3, "offset":I
    :goto_12
    if-lez p2, :cond_42

    .line 149
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 150
    .local v4, "twoBytes":I
    div-int/lit8 v5, v4, 0x60

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit8 v6, v4, 0x60

    or-int v0, v5, v6

    .line 151
    .local v0, "assembledTwoBytes":I
    const/16 v5, 0x3bf

    if-ge v0, v5, :cond_3d

    .line 153
    const v5, 0xa1a1

    add-int/2addr v0, v5

    .line 158
    :goto_2a
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 159
    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 160
    add-int/lit8 v3, v3, 0x2

    .line 161
    add-int/lit8 p2, p2, -0x1

    .line 162
    goto :goto_12

    .line 156
    :cond_3d
    const v5, 0xa6a1

    add-int/2addr v0, v5

    goto :goto_2a

    .line 165
    .end local v0    # "assembledTwoBytes":I
    .end local v4    # "twoBytes":I
    :cond_42
    :try_start_42
    new-instance v5, Ljava/lang/String;

    const-string v6, "GB2312"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_4c} :catch_4d

    .line 169
    return-void

    .line 166
    :catch_4d
    move-exception v2

    .line 167
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 175
    mul-int/lit8 v5, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-le v5, v6, :cond_d

    .line 176
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 181
    :cond_d
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 182
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 183
    .local v3, "offset":I
    :goto_12
    if-lez p2, :cond_3e

    .line 185
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 186
    .local v4, "twoBytes":I
    div-int/lit16 v5, v4, 0xc0

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit16 v6, v4, 0xc0

    or-int v0, v5, v6

    .line 187
    .local v0, "assembledTwoBytes":I
    const/16 v5, 0x1f00

    if-ge v0, v5, :cond_39

    .line 189
    const v5, 0x8140

    add-int/2addr v0, v5

    .line 194
    :goto_2a
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 195
    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v0

    aput-byte v6, v1, v5

    .line 196
    add-int/lit8 v3, v3, 0x2

    .line 197
    add-int/lit8 p2, p2, -0x1

    .line 198
    goto :goto_12

    .line 192
    :cond_39
    const v5, 0xc140

    add-int/2addr v0, v5

    goto :goto_2a

    .line 201
    .end local v0    # "assembledTwoBytes":I
    .end local v4    # "twoBytes":I
    :cond_3e
    :try_start_3e
    new-instance v5, Ljava/lang/String;

    const-string v6, "SJIS"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_48} :catch_49

    .line 205
    return-void

    .line 202
    :catch_49
    move-exception v2

    .line 203
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/16 v4, 0xa

    .line 291
    :goto_4
    const/4 v3, 0x3

    if-lt p2, v3, :cond_3f

    .line 293
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v4, :cond_12

    .line 294
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 296
    :cond_12
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 297
    .local v1, "threeDigitsBits":I
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1f

    .line 298
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 300
    :cond_1f
    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    div-int/lit8 v3, v1, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 p2, p2, -0x3

    .line 304
    goto :goto_4

    .line 305
    .end local v1    # "threeDigitsBits":I
    :cond_3f
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6d

    .line 307
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_4d

    .line 308
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 310
    :cond_4d
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 311
    .local v2, "twoDigitsBits":I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_5a

    .line 312
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 314
    :cond_5a
    div-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    rem-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .end local v2    # "twoDigitsBits":I
    :cond_6c
    :goto_6c
    return-void

    .line 316
    :cond_6d
    const/4 v3, 0x1

    if-ne p2, v3, :cond_6c

    .line 318
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_7b

    .line 319
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 321
    :cond_7b
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 322
    .local v0, "digitBits":I
    if-lt v0, v4, :cond_86

    .line 323
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 325
    :cond_86
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6c
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .registers 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 330
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 331
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_d

    .line 333
    and-int/lit8 v3, v0, 0x7f

    .line 343
    :goto_c
    return v3

    .line 335
    :cond_d
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1d

    .line 337
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 338
    .local v1, "secondByte":I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_c

    .line 340
    .end local v1    # "secondByte":I
    :cond_1d
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2f

    .line 342
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 343
    .local v2, "secondThirdBytes":I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_c

    .line 345
    .end local v2    # "secondThirdBytes":I
    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .registers 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_a

    .line 243
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 245
    :cond_a
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
