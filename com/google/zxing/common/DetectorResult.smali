.class public Lcom/google/zxing/common/DetectorResult;
.super Ljava/lang/Object;
.source "DetectorResult.java"


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:[Lcom/google/zxing/ResultPoint;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/common/DetectorResult;->a:Lcom/google/zxing/common/BitMatrix;

    .line 35
    iput-object p2, p0, Lcom/google/zxing/common/DetectorResult;->b:[Lcom/google/zxing/ResultPoint;

    .line 36
    return-void
.end method


# virtual methods
.method public final d()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/common/DetectorResult;->a:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final e()[Lcom/google/zxing/ResultPoint;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/zxing/common/DetectorResult;->b:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method
