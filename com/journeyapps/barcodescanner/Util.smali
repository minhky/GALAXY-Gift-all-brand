.class public Lcom/journeyapps/barcodescanner/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static a()V
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_13
    return-void
.end method
