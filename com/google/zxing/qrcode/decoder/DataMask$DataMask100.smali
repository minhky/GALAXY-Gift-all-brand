.class final Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)Z
    .registers 5

    .prologue
    .line 128
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
