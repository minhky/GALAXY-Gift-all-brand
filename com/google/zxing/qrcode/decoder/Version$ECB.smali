.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->a:I

    .line 225
    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->b:I

    .line 226
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->b:I

    return v0
.end method
