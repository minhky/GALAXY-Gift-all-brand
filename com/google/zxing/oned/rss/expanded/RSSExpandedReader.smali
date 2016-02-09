.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 53
    new-array v0, v5, [I

    fill-array-data v0, :array_16e

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 54
    new-array v0, v5, [I

    fill-array-data v0, :array_17c

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 55
    new-array v0, v5, [I

    fill-array-data v0, :array_18a

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_198

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1a4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1b0

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_1bc

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_1c8

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1d4

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 66
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1e0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1f4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_208

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_21c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_230

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_244

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_258

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_26c

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_280

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_294

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_2a8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_2bc

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_2d0

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_2e4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_2f8

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_30c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_320

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_334

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_348

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_35c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_370

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_384

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_398

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_3ac

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_3b4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3be

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_3ca

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3d8

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_3e8

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_3fa

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_40e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_424

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_43c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    .line 53
    :array_16e
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    .line 54
    :array_17c
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    .line 55
    :array_18a
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    .line 57
    :array_198
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_1a4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_1b0
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_1bc
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_1c8
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_1d4
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    .line 66
    :array_1e0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1f4
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_208
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_21c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_230
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_244
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_258
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_26c
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_280
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_294
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_2a8
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_2bc
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_2d0
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_2e4
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_2f8
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_30c
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_320
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_334
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_348
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_35c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_370
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_384
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_398
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 99
    :array_3ac
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3b4
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_3be
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_3ca
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_3d8
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_3e8
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_3fa
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_40e
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_424
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_43c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .registers 15
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 698
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v8

    .line 699
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v3

    .line 700
    .local v3, "evenSum":I
    add-int v10, v8, v3

    sub-int v6, v10, p1

    .line 701
    .local v6, "mismatch":I
    and-int/lit8 v10, v8, 0x1

    if-ne v10, v9, :cond_38

    move v7, v9

    .line 702
    .local v7, "oddParityBad":Z
    :goto_1e
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_23

    move v2, v9

    .line 704
    .local v2, "evenParityBad":Z
    :cond_23
    const/4 v5, 0x0

    .line 705
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 707
    .local v1, "decrementOdd":Z
    if-le v8, v12, :cond_3a

    .line 708
    const/4 v1, 0x1

    .line 712
    :cond_28
    :goto_28
    const/4 v4, 0x0

    .line 713
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 714
    .local v0, "decrementEven":Z
    if-le v3, v12, :cond_3e

    .line 715
    const/4 v0, 0x1

    .line 720
    :cond_2d
    :goto_2d
    if-ne v6, v9, :cond_55

    .line 721
    if-eqz v7, :cond_4c

    .line 722
    if-eqz v2, :cond_42

    .line 723
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .end local v0    # "decrementEven":Z
    .end local v1    # "decrementOdd":Z
    .end local v2    # "evenParityBad":Z
    .end local v4    # "incrementEven":Z
    .end local v5    # "incrementOdd":Z
    .end local v7    # "oddParityBad":Z
    :cond_38
    move v7, v2

    .line 701
    goto :goto_1e

    .line 709
    .restart local v1    # "decrementOdd":Z
    .restart local v2    # "evenParityBad":Z
    .restart local v5    # "incrementOdd":Z
    .restart local v7    # "oddParityBad":Z
    :cond_3a
    if-ge v8, v11, :cond_28

    .line 710
    const/4 v5, 0x1

    goto :goto_28

    .line 716
    .restart local v0    # "decrementEven":Z
    .restart local v4    # "incrementEven":Z
    :cond_3e
    if-ge v3, v11, :cond_2d

    .line 717
    const/4 v4, 0x1

    goto :goto_2d

    .line 725
    :cond_42
    const/4 v1, 0x1

    .line 767
    :cond_43
    :goto_43
    if-eqz v5, :cond_96

    .line 768
    if-eqz v1, :cond_8b

    .line 769
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 727
    :cond_4c
    if-nez v2, :cond_53

    .line 728
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 730
    :cond_53
    const/4 v0, 0x1

    goto :goto_43

    .line 732
    :cond_55
    const/4 v9, -0x1

    if-ne v6, v9, :cond_6c

    .line 733
    if-eqz v7, :cond_63

    .line 734
    if-eqz v2, :cond_61

    .line 735
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 737
    :cond_61
    const/4 v5, 0x1

    goto :goto_43

    .line 739
    :cond_63
    if-nez v2, :cond_6a

    .line 740
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 742
    :cond_6a
    const/4 v4, 0x1

    goto :goto_43

    .line 744
    :cond_6c
    if-nez v6, :cond_86

    .line 745
    if-eqz v7, :cond_7f

    .line 746
    if-nez v2, :cond_77

    .line 747
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 750
    :cond_77
    if-ge v8, v3, :cond_7c

    .line 751
    const/4 v5, 0x1

    .line 752
    const/4 v0, 0x1

    goto :goto_43

    .line 754
    :cond_7c
    const/4 v1, 0x1

    .line 755
    const/4 v4, 0x1

    goto :goto_43

    .line 758
    :cond_7f
    if-eqz v2, :cond_43

    .line 759
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 764
    :cond_86
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 771
    :cond_8b
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 773
    :cond_96
    if-eqz v1, :cond_a3

    .line 774
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 776
    :cond_a3
    if-eqz v4, :cond_b7

    .line 777
    if-eqz v0, :cond_ac

    .line 778
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 780
    :cond_ac
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 782
    :cond_b7
    if-eqz v0, :cond_c4

    .line 783
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 785
    :cond_c4
    return-void
.end method

.method private checkChecksum()Z
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 383
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 384
    .local v6, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 385
    .local v0, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    .line 387
    .local v5, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    if-nez v5, :cond_14

    .line 409
    :cond_13
    :goto_13
    return v9

    .line 391
    :cond_14
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v2

    .line 392
    .local v2, "checksum":I
    const/4 v8, 0x2

    .line 394
    .local v8, "s":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1a
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_45

    .line 395
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 396
    .local v3, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v2, v10

    .line 397
    add-int/lit8 v8, v8, 0x1

    .line 398
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 399
    .local v4, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    if-eqz v4, :cond_42

    .line 400
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v2, v10

    .line 401
    add-int/lit8 v8, v8, 0x1

    .line 394
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 405
    .end local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v4    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_45
    rem-int/lit16 v2, v2, 0xd3

    .line 407
    add-int/lit8 v10, v8, -0x4

    mul-int/lit16 v10, v10, 0xd3

    add-int v1, v10, v2

    .line 409
    .local v1, "checkCharacterValue":I
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    if-ne v1, v10, :cond_13

    const/4 v9, 0x1

    goto :goto_13
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5e

    .line 220
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 221
    .local v2, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 223
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1b
    if-ge v1, v4, :cond_2f

    .line 224
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 226
    :cond_2f
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 219
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_43
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 233
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 241
    :goto_4b
    return-object v5

    .line 236
    :cond_4c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v3, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v5, v0, 0x1

    :try_start_59
    invoke-direct {p0, v3, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_5c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_59 .. :try_end_5c} :catch_63

    move-result-object v5

    goto :goto_4b

    .line 247
    .end local v1    # "j":I
    .end local v2    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    .end local v4    # "size":I
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 242
    .restart local v1    # "j":I
    .restart local v2    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .restart local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    .restart local v4    # "size":I
    :catch_63
    move-exception v5

    goto :goto_40
.end method

.method private checkRows(Z)Ljava/util/List;
    .registers 5
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_11

    .line 193
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 194
    const/4 v0, 0x0

    .line 213
    :cond_10
    :goto_10
    return-object v0

    .line 197
    :cond_11
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 198
    if-eqz p1, :cond_1d

    .line 199
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 202
    :cond_1d
    const/4 v0, 0x0

    .line 204
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_27
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1e .. :try_end_27} :catch_30

    move-result-object v0

    .line 209
    :goto_28
    if-eqz p1, :cond_10

    .line 210
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_10

    .line 205
    :catch_30
    move-exception v1

    goto :goto_28
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 366
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 368
    .local v0, "binary":Lcom/google/zxing/common/BitArray;
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v1

    .line 369
    .local v1, "decoder":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "resultingString":Ljava/lang/String;
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 372
    .local v2, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 374
    .local v3, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/Result;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    aget-object v8, v2, v9

    aput-object v8, v7, v9

    aget-object v8, v2, v10

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aget-object v9, v3, v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aget-object v9, v3, v10

    aput-object v9, v7, v8

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v4, v6, v7, v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 467
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 468
    .local v1, "counters":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 469
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 470
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 471
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 473
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 476
    .local v7, "width":I
    if-ltz p3, :cond_4c

    .line 477
    move v5, p3

    .line 484
    .local v5, "rowOffset":I
    :goto_1b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_6c

    const/4 v6, 0x1

    .line 485
    .local v6, "searchingEvenPair":Z
    :goto_24
    iget-boolean v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v9, :cond_2b

    .line 486
    if-nez v6, :cond_6e

    const/4 v6, 0x1

    .line 489
    :cond_2b
    :goto_2b
    const/4 v2, 0x0

    .line 490
    .local v2, "isWhite":Z
    :goto_2c
    if-ge v5, v7, :cond_37

    .line 491
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_70

    const/4 v2, 0x1

    .line 492
    :goto_35
    if-nez v2, :cond_72

    .line 498
    :cond_37
    const/4 v0, 0x0

    .line 499
    .local v0, "counterPosition":I
    move v4, v5

    .line 500
    .local v4, "patternStart":I
    move v8, v5

    .local v8, "x":I
    :goto_3a
    if-ge v8, v7, :cond_bd

    .line 501
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_75

    .line 502
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 500
    :goto_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 478
    .end local v0    # "counterPosition":I
    .end local v2    # "isWhite":Z
    .end local v4    # "patternStart":I
    .end local v5    # "rowOffset":I
    .end local v6    # "searchingEvenPair":Z
    .end local v8    # "x":I
    :cond_4c
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 479
    const/4 v5, 0x0

    .restart local v5    # "rowOffset":I
    goto :goto_1b

    .line 481
    .end local v5    # "rowOffset":I
    :cond_54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 482
    .local v3, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v5, v9, v10

    .restart local v5    # "rowOffset":I
    goto :goto_1b

    .line 484
    .end local v3    # "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_6c
    const/4 v6, 0x0

    goto :goto_24

    .line 486
    .restart local v6    # "searchingEvenPair":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_2b

    .line 491
    .restart local v2    # "isWhite":Z
    :cond_70
    const/4 v2, 0x0

    goto :goto_35

    .line 495
    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 504
    .restart local v0    # "counterPosition":I
    .restart local v4    # "patternStart":I
    .restart local v8    # "x":I
    :cond_75
    const/4 v9, 0x3

    if-ne v0, v9, :cond_b8

    .line 505
    if-eqz v6, :cond_7d

    .line 506
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 509
    :cond_7d
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 510
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x0

    aput v4, v9, v10

    .line 511
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x1

    aput v8, v9, v10

    .line 512
    return-void

    .line 515
    :cond_8e
    if-eqz v6, :cond_93

    .line 516
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 519
    :cond_93
    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 520
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget v10, v1, v10

    aput v10, v1, v9

    .line 521
    const/4 v9, 0x1

    const/4 v10, 0x3

    aget v10, v1, v10

    aput v10, v1, v9

    .line 522
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 523
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    .line 524
    add-int/lit8 v0, v0, -0x1

    .line 528
    :goto_b1
    const/4 v9, 0x1

    aput v9, v1, v0

    .line 529
    if-nez v2, :cond_bb

    const/4 v2, 0x1

    :goto_b7
    goto :goto_49

    .line 526
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 529
    :cond_bb
    const/4 v2, 0x0

    goto :goto_b7

    .line 532
    :cond_bd
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .registers 4
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 416
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 421
    :goto_e
    return v0

    .line 418
    .end local v0    # "currentPos":I
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 419
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    goto :goto_e
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .registers 4
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 337
    .local v7, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v0, 0x1

    .line 338
    .local v0, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 339
    .local v5, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v1, 0x0

    .line 340
    .local v1, "found":Z
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 341
    .local v6, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 342
    const/4 v1, 0x1

    .line 346
    .end local v6    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3d
    if-nez v1, :cond_15

    .line 347
    const/4 v0, 0x0

    .line 351
    .end local v1    # "found":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_40
    if-eqz v0, :cond_4

    .line 353
    const/4 v8, 0x1

    .line 356
    .end local v0    # "allFound":Z
    .end local v7    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :goto_43
    return v8

    :cond_44
    const/4 v8, 0x0

    goto :goto_43
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v3, :cond_34

    aget-object v4, v0, v1

    .line 254
    .local v4, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v4

    if-le v6, v7, :cond_12

    .line 253
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 258
    :cond_12
    const/4 v5, 0x1

    .line 259
    .local v5, "stop":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2d

    .line 260
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    aget v7, v4, v2

    if-eq v6, v7, :cond_31

    .line 261
    const/4 v5, 0x0

    .line 266
    :cond_2d
    if-eqz v5, :cond_f

    .line 267
    const/4 v6, 0x1

    .line 271
    .end local v2    # "j":I
    .end local v4    # "sequence":[I
    .end local v5    # "stop":Z
    :goto_30
    return v6

    .line 259
    .restart local v2    # "j":I
    .restart local v4    # "sequence":[I
    .restart local v5    # "stop":Z
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 271
    .end local v2    # "j":I
    .end local v4    # "sequence":[I
    .end local v5    # "stop":Z
    :cond_34
    const/4 v6, 0x0

    goto :goto_30
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "oddPattern"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 550
    if-eqz p3, :cond_42

    .line 553
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    add-int/lit8 v8, v0, -0x1

    .line 555
    .local v8, "firstElementStart":I
    :goto_a
    if-ltz v8, :cond_15

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 556
    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    .line 559
    :cond_15
    add-int/lit8 v8, v8, 0x1

    .line 560
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    sub-int v7, v0, v8

    .line 561
    .local v7, "firstCounter":I
    move v3, v8

    .line 562
    .local v3, "start":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v0, v10

    .line 574
    .end local v8    # "firstElementStart":I
    .local v4, "end":I
    :goto_22
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 575
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    aput v7, v6, v5

    .line 580
    :try_start_2e
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_33
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2e .. :try_end_33} :catch_57

    move-result v1

    .line 584
    .local v1, "value":I
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    .end local v1    # "value":I
    :goto_41
    return-object v0

    .line 567
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v6    # "counters":[I
    .end local v7    # "firstCounter":I
    :cond_42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v0, v5

    .line 569
    .restart local v3    # "start":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v10

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    .line 570
    .restart local v4    # "end":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v10

    sub-int v7, v4, v0

    .restart local v7    # "firstCounter":I
    goto :goto_22

    .line 581
    .restart local v6    # "counters":[I
    :catch_57
    move-exception v9

    .line 582
    .local v9, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 309
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 310
    .local v7, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 313
    const/4 v0, 0x1

    .line 314
    .local v0, "allFound":Z
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 315
    .local v5, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v1, 0x0

    .line 316
    .local v1, "found":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 317
    .local v6, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 318
    const/4 v1, 0x1

    .line 322
    .end local v6    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4b
    if-nez v1, :cond_27

    .line 323
    const/4 v0, 0x0

    .line 327
    .end local v1    # "found":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4e
    if-eqz v0, :cond_4

    .line 329
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 332
    .end local v0    # "allFound":Z
    .end local v7    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_54
    return-void
.end method

.method private static reverseCounters([I)V
    .registers 5
    .param p0, "counters"    # [I

    .prologue
    .line 536
    array-length v1, p0

    .line 537
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_19

    .line 538
    aget v2, p0, v0

    .line 539
    .local v2, "tmp":I
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 540
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 542
    .end local v2    # "tmp":I
    :cond_19
    return-void
.end method

.method private storeRow(IZ)V
    .registers 10
    .param p1, "rowNumber"    # I
    .param p2, "wasReversed"    # Z

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "insertPos":I
    const/4 v3, 0x0

    .line 278
    .local v3, "prevIsSame":Z
    const/4 v2, 0x0

    .line 279
    .local v2, "nextIsSame":Z
    :goto_3
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1f

    .line 280
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 281
    .local v0, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_24

    .line 282
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    .line 288
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_1f
    if-nez v2, :cond_23

    if-eqz v3, :cond_2d

    .line 304
    :cond_23
    :goto_23
    return-void

    .line 285
    .restart local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_24
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    goto :goto_3

    .line 297
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_2d
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 301
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v5, v6, p1, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 303
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    goto :goto_23
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 38
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "isOddPattern"    # Z
    .param p4, "leftChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 592
    .local v5, "counters":[I
    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 593
    const/16 v30, 0x1

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 594
    const/16 v30, 0x2

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 595
    const/16 v30, 0x3

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 596
    const/16 v30, 0x4

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 597
    const/16 v30, 0x5

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 598
    const/16 v30, 0x6

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 599
    const/16 v30, 0x7

    const/16 v31, 0x0

    aput v31, v5, v30

    .line 601
    if-eqz p4, :cond_86

    .line 602
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 613
    :cond_45
    const/16 v16, 0x11

    .line 614
    .local v16, "numModules":I
    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v6, v30, v31

    .line 617
    .local v6, "elementWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x41700000

    div-float v11, v30, v31

    .line 618
    .local v11, "expectedElementWidth":F
    sub-float v30, v6, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    div-float v30, v30, v11

    const v31, 0x3e99999a

    cmpl-float v30, v30, v31

    if-lez v30, :cond_aa

    .line 619
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 604
    .end local v6    # "elementWidth":F
    .end local v11    # "expectedElementWidth":F
    .end local v16    # "numModules":I
    :cond_86
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 606
    const/4 v14, 0x0

    .local v14, "i":I
    array-length v0, v5

    move/from16 v30, v0

    add-int/lit8 v15, v30, -0x1

    .local v15, "j":I
    :goto_9b
    if-ge v14, v15, :cond_45

    .line 607
    aget v24, v5, v14

    .line 608
    .local v24, "temp":I
    aget v30, v5, v15

    aput v30, v5, v14

    .line 609
    aput v24, v5, v15

    .line 606
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_9b

    .line 622
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v24    # "temp":I
    .restart local v6    # "elementWidth":F
    .restart local v11    # "expectedElementWidth":F
    .restart local v16    # "numModules":I
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v18

    .line 623
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v8

    .line 624
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 625
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 627
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_bb
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_11a

    .line 628
    const/high16 v30, 0x3f800000

    aget v31, v5, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    div-float v27, v30, v6

    .line 629
    .local v27, "value":F
    const/high16 v30, 0x3f000000

    add-float v30, v30, v27

    move/from16 v0, v30

    float-to-int v4, v0

    .line 630
    .local v4, "count":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ge v4, v0, :cond_fb

    .line 631
    const v30, 0x3e99999a

    cmpg-float v30, v27, v30

    if-gez v30, :cond_e8

    .line 632
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 634
    :cond_e8
    const/4 v4, 0x1

    .line 641
    :cond_e9
    :goto_e9
    shr-int/lit8 v22, v14, 0x1

    .line 642
    .local v22, "offset":I
    and-int/lit8 v30, v14, 0x1

    if-nez v30, :cond_110

    .line 643
    aput v4, v18, v22

    .line 644
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v27, v30

    aput v30, v19, v22

    .line 627
    :goto_f8
    add-int/lit8 v14, v14, 0x1

    goto :goto_bb

    .line 635
    .end local v22    # "offset":I
    :cond_fb
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v4, v0, :cond_e9

    .line 636
    const v30, 0x410b3333

    cmpl-float v30, v27, v30

    if-lez v30, :cond_10d

    .line 637
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 639
    :cond_10d
    const/16 v4, 0x8

    goto :goto_e9

    .line 646
    .restart local v22    # "offset":I
    :cond_110
    aput v4, v8, v22

    .line 647
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v27, v30

    aput v30, v9, v22

    goto :goto_f8

    .line 651
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v27    # "value":F
    :cond_11a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v30

    mul-int/lit8 v31, v30, 0x4

    if-eqz p3, :cond_15d

    const/16 v30, 0x0

    :goto_12b
    add-int v31, v31, v30

    if-eqz p4, :cond_160

    const/16 v30, 0x0

    :goto_131
    add-int v30, v30, v31

    add-int/lit8 v29, v30, -0x1

    .line 655
    .local v29, "weightRowNumber":I
    const/16 v20, 0x0

    .line 656
    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 657
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_140
    if-ltz v14, :cond_163

    .line 658
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_156

    .line 659
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v29

    mul-int/lit8 v31, v14, 0x2

    aget v28, v30, v31

    .line 660
    .local v28, "weight":I
    aget v30, v18, v14

    mul-int v30, v30, v28

    add-int v17, v17, v30

    .line 662
    .end local v28    # "weight":I
    :cond_156
    aget v30, v18, v14

    add-int v20, v20, v30

    .line 657
    add-int/lit8 v14, v14, -0x1

    goto :goto_140

    .line 653
    .end local v17    # "oddChecksumPortion":I
    .end local v20    # "oddSum":I
    .end local v29    # "weightRowNumber":I
    :cond_15d
    const/16 v30, 0x2

    goto :goto_12b

    :cond_160
    const/16 v30, 0x1

    goto :goto_131

    .line 664
    .restart local v17    # "oddChecksumPortion":I
    .restart local v20    # "oddSum":I
    .restart local v29    # "weightRowNumber":I
    :cond_163
    const/4 v7, 0x0

    .line 666
    .local v7, "evenChecksumPortion":I
    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_169
    if-ltz v14, :cond_184

    .line 667
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_181

    .line 668
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v29

    mul-int/lit8 v31, v14, 0x2

    add-int/lit8 v31, v31, 0x1

    aget v28, v30, v31

    .line 669
    .restart local v28    # "weight":I
    aget v30, v8, v14

    mul-int v30, v30, v28

    add-int v7, v7, v30

    .line 666
    .end local v28    # "weight":I
    :cond_181
    add-int/lit8 v14, v14, -0x1

    goto :goto_169

    .line 673
    :cond_184
    add-int v3, v17, v7

    .line 675
    .local v3, "checksumPortion":I
    and-int/lit8 v30, v20, 0x1

    if-nez v30, :cond_19a

    const/16 v30, 0xd

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_19a

    const/16 v30, 0x4

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_19f

    .line 676
    :cond_19a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 679
    :cond_19f
    rsub-int/lit8 v30, v20, 0xd

    div-int/lit8 v13, v30, 0x2

    .line 680
    .local v13, "group":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v21, v30, v13

    .line 681
    .local v21, "oddWidest":I
    rsub-int/lit8 v10, v21, 0x9

    .line 682
    .local v10, "evenWidest":I
    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 683
    .local v26, "vOdd":I
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v8, v10, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    .line 684
    .local v25, "vEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v23, v30, v13

    .line 685
    .local v23, "tEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v12, v30, v13

    .line 686
    .local v12, "gSum":I
    mul-int v30, v26, v23

    add-int v30, v30, v25

    add-int v27, v30, v12

    .line 688
    .local v27, "value":I
    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v30
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 6
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 131
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    :try_end_f
    .catch Lcom/google/zxing/NotFoundException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v1

    .line 140
    :goto_10
    return-object v1

    .line 133
    .end local v0    # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :catch_11
    move-exception v1

    .line 137
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    .line 140
    .restart local v0    # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v1

    goto :goto_10
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .registers 11
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 153
    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v7, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    .line 154
    .local v0, "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_2

    .line 158
    .end local v0    # "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :catch_e
    move-exception v1

    .line 159
    .local v1, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 160
    throw v1

    .line 165
    :cond_18
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 166
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 181
    :cond_20
    return-object v2

    .line 169
    :cond_21
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_41

    move v3, v5

    .line 170
    .local v3, "tryStackedDecode":Z
    :goto_2a
    const/4 v4, 0x0

    .line 171
    .local v4, "wasReversed":Z
    invoke-direct {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    .line 172
    if-eqz v3, :cond_3c

    .line 175
    invoke-direct {p0, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-nez v2, :cond_20

    .line 179
    invoke-direct {p0, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 180
    if-nez v2, :cond_20

    .line 185
    .end local v2    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :cond_3c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .end local v3    # "tryStackedDecode":Z
    .end local v4    # "wasReversed":Z
    :cond_41
    move v3, v6

    .line 169
    goto :goto_2a
.end method

.method getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 427
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_48

    move v2, v8

    .line 428
    .local v2, "isOddPattern":Z
    :goto_b
    iget-boolean v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v10, :cond_12

    .line 429
    if-nez v2, :cond_4a

    move v2, v8

    .line 434
    :cond_12
    :goto_12
    const/4 v3, 0x1

    .line 435
    .local v3, "keepFinding":Z
    const/4 v0, -0x1

    .line 437
    .local v0, "forcedOffset":I
    :cond_14
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 438
    invoke-direct {p0, p1, p3, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    .line 439
    .local v6, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez v6, :cond_4c

    .line 440
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v10, v10, v9

    invoke-static {p1, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    .line 444
    :goto_25
    if-nez v3, :cond_14

    .line 449
    invoke-virtual {p0, p1, v6, v2, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 451
    .local v4, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 452
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .end local v0    # "forcedOffset":I
    .end local v2    # "isOddPattern":Z
    .end local v3    # "keepFinding":Z
    .end local v4    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_48
    move v2, v9

    .line 427
    goto :goto_b

    .restart local v2    # "isOddPattern":Z
    :cond_4a
    move v2, v9

    .line 429
    goto :goto_12

    .line 442
    .restart local v0    # "forcedOffset":I
    .restart local v3    # "keepFinding":Z
    .restart local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_4c
    const/4 v3, 0x0

    goto :goto_25

    .line 457
    .restart local v4    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_4e
    const/4 v8, 0x0

    :try_start_4f
    invoke-virtual {p0, p1, v6, v2, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_52
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4f .. :try_end_52} :catch_5a

    move-result-object v7

    .line 461
    .local v7, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_53
    const/4 v5, 0x1

    .line 462
    .local v5, "mayBeLast":Z
    new-instance v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v8, v4, v7, v6, v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v8

    .line 458
    .end local v5    # "mayBeLast":Z
    .end local v7    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_5a
    move-exception v1

    .line 459
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v7, 0x0

    .restart local v7    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_53
.end method
