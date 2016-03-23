.class Lcom/loopj/android/http/Base64$Encoder;
.super Lcom/loopj/android/http/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 532
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/loopj/android/http/Base64$Encoder;->ENCODE:[B

    .line 542
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/loopj/android/http/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    .line 532
    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 542
    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 556
    invoke-direct {p0}, Lcom/loopj/android/http/Base64$Coder;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    .line 559
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    .line 560
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    .line 561
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    .line 562
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Lcom/loopj/android/http/Base64$Encoder;->ENCODE:[B

    :goto_21
    iput-object v0, p0, Lcom/loopj/android/http/Base64$Encoder;->alphabet:[B

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    .line 565
    iput v2, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    .line 567
    iget-boolean v0, p0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Lcom/loopj/android/http/Base64$Encoder;->count:I

    .line 568
    return-void

    :cond_33
    move v0, v2

    .line 559
    goto :goto_c

    :cond_35
    move v0, v2

    .line 560
    goto :goto_13

    :cond_37
    move v1, v2

    .line 561
    goto :goto_19

    .line 562
    :cond_39
    sget-object v0, Lcom/loopj/android/http/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_21

    .line 567
    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 574
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 19
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 579
    iget-object v1, p0, Lcom/loopj/android/http/Base64$Encoder;->alphabet:[B

    .line 580
    .local v1, "alphabet":[B
    iget-object v5, p0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    .line 581
    .local v5, "output":[B
    const/4 v3, 0x0

    .line 582
    .local v3, "op":I
    iget v2, p0, Lcom/loopj/android/http/Base64$Encoder;->count:I

    .line 584
    .local v2, "count":I
    move/from16 v6, p2

    .line 585
    .local v6, "p":I
    add-int p3, p3, p2

    .line 586
    const/4 v10, -0x1

    .line 592
    .local v10, "v":I
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    packed-switch v11, :pswitch_data_232

    .line 619
    :cond_11
    :goto_11
    :pswitch_11
    const/4 v11, -0x1

    if-eq v10, v11, :cond_22e

    .line 620
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .local v4, "op":I
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 621
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 622
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 623
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 624
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_22e

    .line 625
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_49

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 626
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_49
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 627
    const/16 v2, 0x13

    move v7, v6

    .line 636
    .end local v6    # "p":I
    .local v7, "p":I
    :goto_52
    add-int/lit8 v11, v7, 0x3

    move/from16 v0, p3

    if-gt v11, v0, :cond_fc

    .line 637
    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v12, v7, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 640
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 641
    add-int/lit8 v11, v4, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 642
    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 643
    add-int/lit8 v11, v4, 0x3

    and-int/lit8 v12, v10, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 644
    add-int/lit8 v6, v7, 0x3

    .line 645
    .end local v7    # "p":I
    .restart local v6    # "p":I
    add-int/lit8 v3, v4, 0x4

    .line 646
    .end local v4    # "op":I
    .restart local v3    # "op":I
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_22e

    .line 647
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_a6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 648
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_a6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 649
    const/16 v2, 0x13

    move v7, v6

    .end local v6    # "p":I
    .restart local v7    # "p":I
    goto :goto_52

    .line 598
    .end local v4    # "op":I
    .end local v7    # "p":I
    .restart local v3    # "op":I
    .restart local v6    # "p":I
    :pswitch_b0
    add-int/lit8 v11, v6, 0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_11

    .line 601
    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 604
    const/4 v11, 0x0

    iput v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    goto/16 :goto_11

    .line 609
    :pswitch_d5
    add-int/lit8 v11, v6, 0x1

    move/from16 v0, p3

    if-gt v11, v0, :cond_11

    .line 611
    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 614
    const/4 v11, 0x0

    iput v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    goto/16 :goto_11

    .line 653
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_fc
    if-eqz p4, :cond_1f6

    .line 659
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x1

    if-ne v11, v12, :cond_160

    .line 660
    const/4 v8, 0x0

    .line 661
    .local v8, "t":I
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_15b

    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .local v9, "t":I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9    # "t":I
    .restart local v8    # "t":I
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    :goto_113
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v10, v11, 0x4

    .line 662
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    .line 663
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 664
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 665
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_13e

    .line 666
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0x3d

    aput-byte v11, v5, v4

    .line 667
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    :cond_13e
    move v3, v4

    .line 669
    .end local v4    # "op":I
    .restart local v3    # "op":I
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_155

    .line 670
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_14e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 671
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_14e
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    :goto_154
    move v3, v4

    .line 708
    .end local v4    # "op":I
    .end local v8    # "t":I
    .restart local v3    # "op":I
    :cond_155
    :goto_155
    iput v3, p0, Lcom/loopj/android/http/Base64$Encoder;->op:I

    .line 709
    iput v2, p0, Lcom/loopj/android/http/Base64$Encoder;->count:I

    .line 711
    const/4 v11, 0x1

    return v11

    .line 661
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    .restart local v8    # "t":I
    :cond_15b
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v11, p1, v7

    goto :goto_113

    .line 673
    .end local v6    # "p":I
    .end local v8    # "t":I
    .restart local v7    # "p":I
    :cond_160
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x2

    if-ne v11, v12, :cond_1d8

    .line 674
    const/4 v8, 0x0

    .line 675
    .restart local v8    # "t":I
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_1cd

    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .restart local v9    # "t":I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9    # "t":I
    .restart local v8    # "t":I
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    :goto_176
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v11, 0xa

    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_1d2

    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .restart local v9    # "t":I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9    # "t":I
    .restart local v8    # "t":I
    :goto_185
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x2

    or-int v10, v12, v11

    .line 677
    iget v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    .line 678
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 679
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 680
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 681
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_1b7

    .line 682
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    move v3, v4

    .line 684
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_1b7
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_155

    .line 685
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_1c6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 686
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_1c6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    goto :goto_154

    .line 675
    .end local v6    # "p":I
    .restart local v7    # "p":I
    :cond_1cd
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v11, p1, v7

    goto :goto_176

    :cond_1d2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v11, p1, v6

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    goto :goto_185

    .line 688
    .end local v6    # "p":I
    .end local v8    # "t":I
    .restart local v7    # "p":I
    :cond_1d8
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_228

    if-lez v4, :cond_228

    const/16 v11, 0x13

    if-eq v2, v11, :cond_228

    .line 689
    iget-boolean v11, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_22c

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v4

    .line 690
    :goto_1ec
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_155

    .line 700
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_1f6
    add-int/lit8 v11, p3, -0x1

    if-ne v7, v11, :cond_20a

    .line 701
    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    iget v12, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_155

    .line 702
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_20a
    add-int/lit8 v11, p3, -0x2

    if-ne v7, v11, :cond_228

    .line 703
    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    iget v12, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    .line 704
    iget-object v11, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    iget v12, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    :cond_228
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_155

    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_22c
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto :goto_1ec

    .end local v7    # "p":I
    .restart local v6    # "p":I
    :cond_22e
    move v7, v6

    .end local v6    # "p":I
    .restart local v7    # "p":I
    move v4, v3

    .end local v3    # "op":I
    .restart local v4    # "op":I
    goto/16 :goto_52

    .line 592
    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b0
        :pswitch_d5
    .end packed-switch
.end method
