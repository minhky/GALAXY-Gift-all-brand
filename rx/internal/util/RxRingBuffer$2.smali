.class final Lrx/internal/util/RxRingBuffer$2;
.super Lrx/internal/util/ObjectPool;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/RxRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 290
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer$2;->d()Lrx/internal/util/unsafe/SpmcArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lrx/internal/util/unsafe/SpmcArrayQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/unsafe/SpmcArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lrx/internal/util/unsafe/SpmcArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->c:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;-><init>(I)V

    return-object v0
.end method
