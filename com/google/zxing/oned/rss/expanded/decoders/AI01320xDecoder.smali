.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.source "AI01320xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(I)I
    .registers 3

    .prologue
    .line 51
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_5

    .line 54
    :goto_4
    return p1

    :cond_5
    add-int/lit16 p1, p1, -0x2710

    goto :goto_4
.end method

.method protected a(Ljava/lang/StringBuilder;I)V
    .registers 4

    .prologue
    .line 42
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_b

    .line 43
    const-string/jumbo v0, "(3202)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :goto_a
    return-void

    .line 45
    :cond_b
    const-string/jumbo v0, "(3203)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method
