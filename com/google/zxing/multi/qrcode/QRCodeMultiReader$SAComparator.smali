.class final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
.super Ljava/lang/Object;
.source "QRCodeMultiReader.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SAComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/Result;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/Result;Lcom/google/zxing/Result;)I
    .registers 7
    .param p1, "a"    # Lcom/google/zxing/Result;
    .param p2, "b"    # Lcom/google/zxing/Result;

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "aNumber":I
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    .local v1, "bNumber":I
    if-ge v0, v1, :cond_24

    .line 172
    const/4 v2, -0x1

    .line 177
    :goto_23
    return v2

    .line 174
    :cond_24
    if-le v0, v1, :cond_28

    .line 175
    const/4 v2, 0x1

    goto :goto_23

    .line 177
    :cond_28
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 166
    check-cast p1, Lcom/google/zxing/Result;

    check-cast p2, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;->compare(Lcom/google/zxing/Result;Lcom/google/zxing/Result;)I

    move-result v0

    return v0
.end method
