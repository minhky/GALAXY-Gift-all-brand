.class public final Lcom/fasterxml/jackson/core/sym/NameN;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "NameN.java"


# instance fields
.field private final q:[I

.field private final q1:I

.field private final q2:I

.field private final q3:I

.field private final q4:I

.field private final qlen:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIII[II)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "q1"    # I
    .param p4, "q2"    # I
    .param p5, "q3"    # I
    .param p6, "q4"    # I
    .param p7, "quads"    # [I
    .param p8, "quadLen"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q1:I

    .line 19
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q2:I

    .line 20
    iput p5, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q3:I

    .line 21
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q4:I

    .line 22
    iput-object p7, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    .line 23
    iput p8, p0, Lcom/fasterxml/jackson/core/sym/NameN;->qlen:I

    .line 24
    return-void
.end method

.method private final _equals2([I)Z
    .registers 6
    .param p1, "quads"    # [I

    .prologue
    .line 88
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/NameN;->qlen:I

    add-int/lit8 v0, v2, -0x4

    .line 89
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 90
    add-int/lit8 v2, v1, 0x4

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_13

    .line 91
    const/4 v2, 0x0

    .line 94
    :goto_12
    return v2

    .line 89
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 94
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static construct(Ljava/lang/String;I[II)Lcom/fasterxml/jackson/core/sym/NameN;
    .registers 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "hash"    # I
    .param p2, "q"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v1, 0x4

    .line 31
    if-ge p3, v1, :cond_9

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_9
    const/4 v0, 0x0

    aget v3, p2, v0

    .line 35
    .local v3, "q1":I
    const/4 v0, 0x1

    aget v4, p2, v0

    .line 36
    .local v4, "q2":I
    const/4 v0, 0x2

    aget v5, p2, v0

    .line 37
    .local v5, "q3":I
    const/4 v0, 0x3

    aget v6, p2, v0

    .line 39
    .local v6, "q4":I
    add-int/lit8 v9, p3, -0x4

    .line 43
    .local v9, "rem":I
    if-lez v9, :cond_26

    .line 44
    invoke-static {p2, v1, p3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    .line 48
    .local v7, "buf":[I
    :goto_1d
    new-instance v0, Lcom/fasterxml/jackson/core/sym/NameN;

    move-object v1, p0

    move v2, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/NameN;-><init>(Ljava/lang/String;IIIII[II)V

    return-object v0

    .line 46
    .end local v7    # "buf":[I
    :cond_26
    const/4 v7, 0x0

    .restart local v7    # "buf":[I
    goto :goto_1d
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .param p1, "quad"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .registers 4
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals([II)Z
    .registers 9
    .param p1, "quads"    # [I
    .param p2, "len"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/NameN;->qlen:I

    if-eq p2, v2, :cond_9

    .line 83
    :cond_8
    :goto_8
    return v0

    .line 65
    :cond_9
    aget v2, p1, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q1:I

    if-ne v2, v3, :cond_8

    .line 66
    aget v2, p1, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q2:I

    if-ne v2, v3, :cond_8

    .line 67
    aget v2, p1, v4

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q3:I

    if-ne v2, v3, :cond_8

    .line 68
    aget v2, p1, v5

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q4:I

    if-ne v2, v3, :cond_8

    .line 70
    packed-switch p2, :pswitch_data_50

    .line 72
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/NameN;->_equals2([I)Z

    move-result v0

    goto :goto_8

    .line 74
    :pswitch_29
    const/4 v2, 0x7

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_8

    .line 76
    :pswitch_32
    const/4 v2, 0x6

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v4

    if-ne v2, v3, :cond_8

    .line 78
    :pswitch_3b
    const/4 v2, 0x5

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_8

    .line 80
    :pswitch_44
    const/4 v2, 0x4

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_8

    :pswitch_4d
    move v0, v1

    .line 83
    goto :goto_8

    .line 70
    nop

    :pswitch_data_50
    .packed-switch 0x4
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
        :pswitch_32
        :pswitch_29
    .end packed-switch
.end method