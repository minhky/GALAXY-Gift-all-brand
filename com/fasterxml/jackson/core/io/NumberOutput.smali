.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


# static fields
.field private static BILLION:I

.field static final FULL_3:[C

.field static final FULL_TRIPLETS_B:[B

.field static final LEAD_3:[C

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field private static final NC:C

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static TEN_BILLION_L:J

.field private static THOUSAND_L:J

.field static final sSmallIntStrs:[Ljava/lang/String;

.field static final sSmallIntStrs2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/16 v13, 0xfa0

    const/16 v12, 0xa

    const/4 v1, 0x0

    .line 7
    const v0, 0xf4240

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 8
    const v0, 0x3b9aca00

    sput v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 9
    const-wide v2, 0x2540be400L

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TEN_BILLION_L:J

    .line 10
    const-wide/16 v2, 0x3e8

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    .line 12
    const-wide/32 v2, -0x80000000

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 13
    const-wide/32 v2, 0x7fffffff

    sput-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 15
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 17
    new-array v0, v13, [C

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    .line 18
    new-array v0, v13, [C

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    move v8, v1

    move v5, v1

    .line 24
    :goto_38
    if-ge v8, v12, :cond_84

    .line 25
    add-int/lit8 v0, v8, 0x30

    int-to-char v2, v0

    .line 26
    if-nez v8, :cond_77

    move v0, v1

    :goto_40
    move v7, v1

    .line 27
    :goto_41
    if-ge v7, v12, :cond_80

    .line 28
    add-int/lit8 v3, v7, 0x30

    int-to-char v4, v3

    .line 29
    if-nez v8, :cond_79

    if-nez v7, :cond_79

    move v3, v1

    :goto_4b
    move v6, v5

    move v5, v1

    .line 30
    :goto_4d
    if-ge v5, v12, :cond_7b

    .line 32
    add-int/lit8 v9, v5, 0x30

    int-to-char v9, v9

    .line 33
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aput-char v0, v10, v6

    .line 34
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v11, v6, 0x1

    aput-char v3, v10, v11

    .line 35
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v11, v6, 0x2

    aput-char v9, v10, v11

    .line 36
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aput-char v2, v10, v6

    .line 37
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v11, v6, 0x1

    aput-char v4, v10, v11

    .line 38
    sget-object v10, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v11, v6, 0x2

    aput-char v9, v10, v11

    .line 39
    add-int/lit8 v6, v6, 0x4

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_77
    move v0, v2

    .line 26
    goto :goto_40

    :cond_79
    move v3, v4

    .line 29
    goto :goto_4b

    .line 27
    :cond_7b
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v5, v6

    goto :goto_41

    .line 24
    :cond_80
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_38

    .line 45
    :cond_84
    new-array v0, v13, [B

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    move v0, v1

    .line 47
    :goto_89
    if-ge v0, v13, :cond_97

    .line 48
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 52
    :cond_97
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v14

    const-string/jumbo v2, "2"

    aput-object v2, v0, v15

    const/4 v2, 0x3

    const-string/jumbo v3, "3"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "4"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "5"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "6"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "7"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "8"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "9"

    aput-object v3, v0, v2

    const-string/jumbo v2, "10"

    aput-object v2, v0, v12

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 55
    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v2, "-1"

    aput-object v2, v0, v1

    const-string/jumbo v1, "-2"

    aput-object v1, v0, v14

    const-string/jumbo v1, "-3"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string/jumbo v2, "-4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "-5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "-7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "-8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "-9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "-10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcLongStrLength(J)I
    .registers 8

    .prologue
    .line 382
    const/16 v2, 0xa

    .line 383
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TEN_BILLION_L:J

    .line 386
    :goto_4
    cmp-long v3, p0, v0

    if-ltz v3, :cond_c

    .line 387
    const/16 v3, 0x13

    if-ne v2, v3, :cond_d

    .line 393
    :cond_c
    return v2

    .line 390
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 391
    const/4 v3, 0x3

    shl-long v4, v0, v3

    const/4 v3, 0x1

    shl-long/2addr v0, v3

    add-long/2addr v0, v4

    goto :goto_4
.end method

.method private static full3(I[BI)I
    .registers 8

    .prologue
    .line 368
    shl-int/lit8 v0, p0, 0x2

    .line 369
    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    aput-byte v0, p1, p2

    .line 370
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, p1, v1

    .line 371
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_TRIPLETS_B:[B

    aget-byte v2, v2, v4

    aput-byte v2, p1, v0

    .line 372
    return v1
.end method

.method private static full3(I[CI)I
    .registers 8

    .prologue
    .line 359
    shl-int/lit8 v0, p0, 0x2

    .line 360
    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    aput-char v0, p1, p2

    .line 361
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    .line 362
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->FULL_3:[C

    aget-char v2, v2, v4

    aput-char v2, p1, v0

    .line 363
    return v1
.end method

.method private static leading3(I[BI)I
    .registers 6

    .prologue
    .line 343
    shl-int/lit8 v0, p0, 0x2

    .line 344
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v1, v1, v0

    .line 345
    if-eqz v1, :cond_10

    .line 346
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    move p2, v0

    .line 348
    :cond_10
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v0, v2

    .line 349
    if-eqz v2, :cond_1e

    .line 350
    add-int/lit8 v0, p2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v0

    .line 353
    :cond_1e
    add-int/lit8 v0, p2, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 354
    return v0
.end method

.method private static leading3(I[CI)I
    .registers 6

    .prologue
    .line 327
    shl-int/lit8 v0, p0, 0x2

    .line 328
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v1, v1, v0

    .line 329
    if-eqz v1, :cond_f

    .line 330
    add-int/lit8 v0, p2, 0x1

    aput-char v1, p1, p2

    move p2, v0

    .line 332
    :cond_f
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v0, v2

    .line 333
    if-eqz v2, :cond_1c

    .line 334
    add-int/lit8 v0, p2, 0x1

    aput-char v2, p1, p2

    move p2, v0

    .line 337
    :cond_1c
    add-int/lit8 v0, p2, 0x1

    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->LEAD_3:[C

    aget-char v1, v2, v1

    aput-char v1, p1, p2

    .line 338
    return v0
.end method

.method public static outputInt(I[BI)I
    .registers 8

    .prologue
    .line 131
    if-gez p0, :cond_14

    .line 132
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_c

    .line 133
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    .line 177
    :goto_b
    return v0

    .line 135
    :cond_c
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-byte v1, p1, p2

    .line 136
    neg-int p0, p0

    move p2, v0

    .line 139
    :cond_14
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_3c

    .line 140
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2d

    .line 141
    const/16 v0, 0xa

    if-ge p0, v0, :cond_28

    .line 142
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p0, 0x30

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_b

    .line 144
    :cond_28
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move-result v0

    goto :goto_b

    .line 147
    :cond_2d
    div-int/lit16 v0, p0, 0x3e8

    .line 148
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 149
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move-result v0

    .line 150
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result v0

    goto :goto_b

    .line 154
    :cond_3c
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_70

    const/4 v0, 0x1

    move v1, v0

    .line 155
    :goto_42
    if-eqz v1, :cond_55

    .line 156
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v0

    .line 157
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_73

    .line 158
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v0

    .line 159
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x32

    aput-byte v2, p1, p2

    move p2, v0

    .line 164
    :cond_55
    :goto_55
    div-int/lit16 v0, p0, 0x3e8

    .line 165
    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p0, v2

    .line 167
    div-int/lit16 v3, v0, 0x3e8

    .line 168
    mul-int/lit16 v4, v3, 0x3e8

    sub-int v4, v0, v4

    .line 170
    if-eqz v1, :cond_7b

    .line 171
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result v0

    .line 175
    :goto_67
    invoke-static {v4, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result v0

    .line 176
    invoke-static {v2, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-result v0

    goto :goto_b

    .line 154
    :cond_70
    const/4 v0, 0x0

    move v1, v0

    goto :goto_42

    .line 161
    :cond_73
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x31

    aput-byte v2, p1, p2

    move p2, v0

    goto :goto_55

    .line 173
    :cond_7b
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    move-result v0

    goto :goto_67
.end method

.method public static outputInt(I[CI)I
    .registers 8

    .prologue
    .line 70
    if-gez p0, :cond_14

    .line 71
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_c

    .line 75
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    .line 126
    :goto_b
    return v0

    .line 77
    :cond_c
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    .line 78
    neg-int p0, p0

    move p2, v0

    .line 81
    :cond_14
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v0, :cond_3c

    .line 82
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2d

    .line 83
    const/16 v0, 0xa

    if-ge p0, v0, :cond_28

    .line 84
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p0, 0x30

    int-to-char v1, v1

    aput-char v1, p1, p2

    goto :goto_b

    .line 86
    :cond_28
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move-result v0

    goto :goto_b

    .line 89
    :cond_2d
    div-int/lit16 v0, p0, 0x3e8

    .line 90
    mul-int/lit16 v1, v0, 0x3e8

    sub-int v1, p0, v1

    .line 91
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move-result v0

    .line 92
    invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result v0

    goto :goto_b

    .line 102
    :cond_3c
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_70

    const/4 v0, 0x1

    move v1, v0

    .line 103
    :goto_42
    if-eqz v1, :cond_55

    .line 104
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v0

    .line 105
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v0, :cond_73

    .line 106
    sget v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v0

    .line 107
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x32

    aput-char v2, p1, p2

    move p2, v0

    .line 112
    :cond_55
    :goto_55
    div-int/lit16 v0, p0, 0x3e8

    .line 113
    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p0, v2

    .line 115
    div-int/lit16 v3, v0, 0x3e8

    .line 116
    mul-int/lit16 v4, v3, 0x3e8

    sub-int v4, v0, v4

    .line 119
    if-eqz v1, :cond_7b

    .line 120
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result v0

    .line 124
    :goto_67
    invoke-static {v4, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result v0

    .line 125
    invoke-static {v2, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-result v0

    goto :goto_b

    .line 102
    :cond_70
    const/4 v0, 0x0

    move v1, v0

    goto :goto_42

    .line 109
    :cond_73
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x31

    aput-char v2, p1, p2

    move p2, v0

    goto :goto_55

    .line 122
    :cond_7b
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    move-result v0

    goto :goto_67
.end method

.method public static outputLong(J[BI)I
    .registers 12

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_57

    .line 240
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    .line 241
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v1

    .line 280
    :cond_11
    :goto_11
    return v1

    .line 243
    :cond_12
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_31

    .line 245
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 246
    const/4 v0, 0x0

    move v1, p3

    :goto_20
    if-ge v0, v2, :cond_11

    .line 247
    add-int/lit8 p3, v1, 0x1

    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    .line 246
    add-int/lit8 v0, v0, 0x1

    move v1, p3

    goto :goto_20

    .line 251
    :cond_31
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-byte v1, p2, p3

    .line 252
    neg-long p0, p0

    move p3, v0

    .line 259
    :cond_39
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->calcLongStrLength(J)I

    move-result v0

    add-int v1, p3, v0

    move v0, v1

    .line 263
    :goto_40
    sget-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v2, p0, v2

    if-lez v2, :cond_63

    .line 264
    add-int/lit8 v0, v0, -0x3

    .line 265
    sget-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    div-long v2, p0, v2

    .line 266
    sget-wide v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    mul-long/2addr v4, v2

    sub-long v4, p0, v4

    long-to-int v4, v4

    .line 267
    invoke-static {v4, p2, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move-wide p0, v2

    .line 269
    goto :goto_40

    .line 254
    :cond_57
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_39

    .line 255
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v1

    goto :goto_11

    .line 271
    :cond_63
    long-to-int v2, p0

    move v6, v2

    move v2, v0

    move v0, v6

    .line 272
    :goto_67
    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_78

    .line 273
    add-int/lit8 v3, v2, -0x3

    .line 274
    div-int/lit16 v2, v0, 0x3e8

    .line 275
    mul-int/lit16 v4, v2, 0x3e8

    sub-int/2addr v0, v4

    .line 276
    invoke-static {v0, p2, v3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[BI)I

    move v0, v2

    move v2, v3

    .line 278
    goto :goto_67

    .line 279
    :cond_78
    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[BI)I

    goto :goto_11
.end method

.method public static outputLong(J[CI)I
    .registers 12

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_4d

    .line 190
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    .line 191
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v1

    .line 234
    :goto_11
    return v1

    .line 193
    :cond_12
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_27

    .line 195
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 197
    add-int v1, p3, v0

    goto :goto_11

    .line 199
    :cond_27
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    .line 200
    neg-long p0, p0

    move p3, v0

    .line 211
    :cond_2f
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->calcLongStrLength(J)I

    move-result v0

    add-int v1, p3, v0

    move v0, v1

    .line 215
    :goto_36
    sget-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v2, p0, v2

    if-lez v2, :cond_59

    .line 216
    add-int/lit8 v0, v0, -0x3

    .line 217
    sget-wide v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    div-long v2, p0, v2

    .line 218
    sget-wide v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->THOUSAND_L:J

    mul-long/2addr v4, v2

    sub-long v4, p0, v4

    long-to-int v4, v4

    .line 219
    invoke-static {v4, p2, v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move-wide p0, v2

    .line 221
    goto :goto_36

    .line 202
    :cond_4d
    sget-wide v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2f

    .line 203
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v1

    goto :goto_11

    .line 223
    :cond_59
    long-to-int v2, p0

    move v6, v2

    move v2, v0

    move v0, v6

    .line 224
    :goto_5d
    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_6e

    .line 225
    add-int/lit8 v3, v2, -0x3

    .line 226
    div-int/lit16 v2, v0, 0x3e8

    .line 227
    mul-int/lit16 v4, v2, 0x3e8

    sub-int/2addr v0, v4

    .line 228
    invoke-static {v0, p2, v3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->full3(I[CI)I

    move v0, v2

    move v2, v3

    .line 230
    goto :goto_5d

    .line 232
    :cond_6e
    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->leading3(I[CI)I

    goto :goto_11
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 4

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 296
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_19

    .line 297
    if-ltz p0, :cond_c

    .line 298
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 305
    :goto_b
    return-object v0

    .line 300
    :cond_c
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 301
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 302
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_b

    .line 305
    :cond_19
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 309
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_14

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_14

    .line 310
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
