.class public interface abstract Lcom/google/zxing/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# virtual methods
.method public abstract a(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
.end method

.method public abstract a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method
