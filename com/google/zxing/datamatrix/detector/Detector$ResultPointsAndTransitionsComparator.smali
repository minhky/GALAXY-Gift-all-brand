.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
    .registers 2

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
    .registers 5

    .prologue
    .line 436
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 432
    check-cast p1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    check-cast p2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->a(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I

    move-result v0

    return v0
.end method
