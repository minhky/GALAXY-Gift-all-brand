.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method private constructor <init>(I[B)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    .line 34
    return-void
.end method

.method static a([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->g()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->b()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v6

    .line 54
    array-length v3, v6

    move v0, v1

    move v2, v1

    :goto_c
    if-ge v0, v3, :cond_18

    aget-object v4, v6, v0

    .line 55
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->a()I

    move-result v4

    add-int/2addr v2, v4

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 59
    :cond_18
    new-array v8, v2, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 61
    array-length v7, v6

    move v4, v1

    move v0, v1

    :goto_1d
    if-ge v4, v7, :cond_47

    aget-object v9, v6, v4

    move v2, v0

    move v0, v1

    .line 62
    :goto_23
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->a()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 63
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->b()I

    move-result v10

    .line 64
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->a()I

    move-result v3

    add-int v11, v3, v10

    .line 65
    add-int/lit8 v3, v2, 0x1

    new-instance v12, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v11, v11, [B

    invoke-direct {v12, v10, v11}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v12, v8, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_23

    .line 61
    :cond_42
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1d

    .line 72
    :cond_47
    aget-object v2, v8, v1

    iget-object v2, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    array-length v2, v2

    .line 75
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->a()I

    move-result v3

    sub-int v3, v2, v3

    .line 76
    add-int/lit8 v7, v3, -0x1

    move v5, v1

    move v6, v1

    .line 80
    :goto_56
    if-ge v5, v7, :cond_6d

    move v2, v1

    .line 81
    :goto_59
    if-ge v2, v0, :cond_69

    .line 82
    aget-object v4, v8, v2

    iget-object v9, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v9, v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    move v6, v4

    goto :goto_59

    .line 80
    :cond_69
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_56

    .line 87
    :cond_6d
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->a()I

    move-result v2

    const/16 v4, 0x18

    if-ne v2, v4, :cond_8e

    const/4 v2, 0x1

    move v7, v2

    .line 88
    :goto_77
    if-eqz v7, :cond_90

    const/16 v2, 0x8

    :goto_7b
    move v4, v1

    .line 89
    :goto_7c
    if-ge v4, v2, :cond_92

    .line 90
    aget-object v5, v8, v4

    iget-object v9, v5, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    add-int/lit8 v10, v3, -0x1

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v9, v10

    .line 89
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_7c

    :cond_8e
    move v7, v1

    .line 87
    goto :goto_77

    :cond_90
    move v2, v0

    .line 88
    goto :goto_7b

    .line 94
    :cond_92
    aget-object v2, v8, v1

    iget-object v2, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    array-length v9, v2

    move v2, v6

    .line 95
    :goto_98
    if-ge v3, v9, :cond_c1

    move v5, v1

    move v6, v2

    .line 96
    :goto_9c
    if-ge v5, v0, :cond_bd

    .line 97
    if-eqz v7, :cond_b9

    add-int/lit8 v2, v5, 0x8

    rem-int/2addr v2, v0

    move v4, v2

    .line 98
    :goto_a4
    if-eqz v7, :cond_bb

    const/4 v2, 0x7

    if-le v4, v2, :cond_bb

    add-int/lit8 v2, v3, -0x1

    .line 99
    :goto_ab
    aget-object v4, v8, v4

    iget-object v10, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p0, v6

    aput-byte v6, v10, v2

    .line 96
    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_9c

    :cond_b9
    move v4, v5

    .line 97
    goto :goto_a4

    :cond_bb
    move v2, v3

    .line 98
    goto :goto_ab

    .line 95
    :cond_bd
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_98

    .line 103
    :cond_c1
    array-length v0, p0

    if-eq v2, v0, :cond_ca

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_ca
    return-object v8
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->a:I

    return v0
.end method

.method b()[B
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->b:[B

    return-object v0
.end method
